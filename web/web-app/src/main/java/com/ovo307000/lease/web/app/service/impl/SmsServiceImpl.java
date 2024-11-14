package com.ovo307000.lease.web.app.service.impl;

import com.ovo307000.lease.common.exception.LeaseException;
import com.ovo307000.lease.common.properties.auth.CodeProperties;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.common.service.NotificationService;
import com.ovo307000.lease.common.utils.CodeGenerator;
import com.ovo307000.lease.web.app.service.SmsService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.OptionalInt;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;

/**
 * 短信服务实现类
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class SmsServiceImpl implements SmsService
{
    // Redis模板用于存储短信验证码
    private final StringRedisTemplate stringRedisTemplate;
    // 配置属性用于获取验证码长度等信息
    private final CodeProperties      codeProperties;
    // 通知服务用于发送短信
    private final NotificationService notificationService;

    /**
     * 异步发送验证码
     *
     * @param phone 手机号
     * @return CompletableFuture<Boolean> 表示发送结果的异步完成对象
     */
    public CompletableFuture<Boolean> sendCodeAsync(final String phone)
    {
        return CompletableFuture.supplyAsync(() -> this.sendCode(phone));
    }

    /**
     * 发送验证码
     *
     * @param phone 手机号
     * @return boolean 发送结果
     */
    public boolean sendCode(final String phone)
    {
        // 检查是否处于冷却时间
        if (this.isCooldown(phone))
        {
            throw new LeaseException(ResultCodeEnum.APP_SEND_SMS_TOO_OFTEN);
        }

        try
        {
            // 移除电话号码中的非数字字符
            final String phoneNumber = phone.replaceAll("[^0-9]", "");

            // 获取验证码长度配置，如果没有配置则使用默认值6
            final int codeLength = OptionalInt.of(this.codeProperties.getLength())
                                              .orElse(6);

            // 生成验证码
            final String code = CodeGenerator.generateCode(codeLength);
            // 创建短信消息内容
            final String message = this.createMessage(Integer.parseInt(code));

            // 记录日志
            log.info("Code generated: [{}] notify user: [{}]", code, phoneNumber);
            // 发送短信
            this.notificationService.notifyUser(phoneNumber, message);
            // 将验证码保存到Redis
            this.saveCodeToRedisAsync(phoneNumber, code);

            return true;
        }
        catch (final Exception e)
        {
            // 记录错误日志
            log.error("Failed to send verification code to user: {}", e.getMessage());

            return false;
        }
    }

    /**
     * 检查是否处于冷却时间
     *
     * @param key Redis键
     * @return boolean 是否处于冷却时间
     */
    private boolean isCooldown(final String key)
    {
        // 获取Redis中该键的剩余过期时间
        final long expireTime = Optional.of(this.stringRedisTemplate.getExpire(key, TimeUnit.SECONDS))
                                        .orElse(0L);

        // 如果过期时间大于0并且小于冷却时间，则表示用户仍在冷却中
        if (expireTime > 0 && expireTime < this.codeProperties.getCooldownOfSeconds())
        {
            log.warn("User [{}] is in cooldown, remaining time: [{}]", key, expireTime);

            return true;
        }

        return false;
    }

    /**
     * 创建短信消息内容
     *
     * @param code 验证码
     * @return String 短信消息内容
     */
    private String createMessage(final int code)
    {
        return "Your verification code is: " + code;
    }

    /**
     * 异步将验证码保存到Redis
     *
     * @param phone 手机号
     * @param code  验证码
     */
    private void saveCodeToRedisAsync(final String phone, final String code)
    {
        CompletableFuture.runAsync(() -> this.saveCodeToRedis(phone, code));
    }

    /**
     * 将验证码保存到Redis
     *
     * @param phone 手机号
     * @param code  验证码
     */
    private void saveCodeToRedis(final String phone, final String code)
    {
        final String key = this.codeProperties.getKeyPrefix() + phone;

        this.stringRedisTemplate.opsForValue()
                                .set(key, code, this.codeProperties.getExpirationOfSeconds(), TimeUnit.SECONDS);
    }
}
