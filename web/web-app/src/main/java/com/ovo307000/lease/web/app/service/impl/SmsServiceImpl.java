package com.ovo307000.lease.web.app.service.impl;

import com.ovo307000.lease.common.properties.auth.CodeProperties;
import com.ovo307000.lease.common.service.TwilioService;
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

@Slf4j
@Service
@RequiredArgsConstructor
public class SmsServiceImpl implements SmsService
{
    private static final Long                TTL_SECONDS      = 300L;
    private static final Long                COOLDOWN_SECONDS = 60L;
    private static final String              CODE_KEY_PREFIX  = "sms:code:";
    private final        TwilioService       twilioService;
    private final        StringRedisTemplate stringRedisTemplate;
    private final        CodeProperties      codeProperties;

    public CompletableFuture<Boolean> sendCodeAsync(final String phone)
    {
        return CompletableFuture.supplyAsync(() -> this.sendCode(phone));
    }

    public boolean sendCode(final String phone)
    {
        if (this.isCooldown(phone))
        {
            throw new RuntimeException("Failed to send verification code to user: user sms service is in cooldown");
        }

        try
        {
            final String phoneNumber = phone.replaceAll("[^0-9]", "");

            final int codeLength = OptionalInt.of(this.codeProperties.getLength())
                                              .orElse(6);

            final String code    = CodeGenerator.generateCode(codeLength);
            final String message = this.createMessage(Integer.parseInt(code));

            log.info("Code generated: [{}] notify user: [{}]", code, phoneNumber);
            this.twilioService.notifyUser(phoneNumber, message);
            this.saveCodeToRedisAsync(phoneNumber, code);

            return true;
        }
        catch (final Exception e)
        {
            log.error("Failed to send verification code to user: {}", e.getMessage());

            return false;
        }
    }

    private boolean isCooldown(final String key)
    {
        final long expireTime = Optional.ofNullable(this.stringRedisTemplate.getExpire(key, TimeUnit.SECONDS))
                                        .orElse(0L);

        // 如果过期时间大于 0 并且小于冷却时间，则表示用户仍在冷却中
        if (expireTime > 0 && expireTime < COOLDOWN_SECONDS)
        {
            log.warn("User [{}] is in cooldown, remaining time: [{}]", key, expireTime);

            return true;
        }

        return false;
    }

    private String createMessage(final int code)
    {
        return "Your verification code is: " + code;
    }

    private void saveCodeToRedisAsync(final String phone, final String code)
    {
        CompletableFuture.runAsync(() -> this.saveCodeToRedis(phone, code));
    }

    private void saveCodeToRedis(final String phone, final String code)
    {
        final String key = CODE_KEY_PREFIX + phone;

        this.stringRedisTemplate.opsForValue()
                                .set(key, code, TTL_SECONDS);
    }
}
