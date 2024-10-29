package com.ovo307000.lease.web.admin.service.impl;

import com.ovo307000.lease.common.exception.LeaseException;
import com.ovo307000.lease.common.properties.auth.CaptchaProperties;
import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.common.utils.JWTUtils;
import com.ovo307000.lease.module.entity.SystemUser;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.admin.mapper.SystemUserMapper;
import com.ovo307000.lease.web.admin.service.LoginService;
import com.ovo307000.lease.web.admin.vo.login.CaptchaVo;
import com.ovo307000.lease.web.admin.vo.login.LoginVo;
import com.wf.captcha.SpecCaptcha;
import jakarta.annotation.Nullable;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * 登录服务实现类
 * 提供获取图形验证码和用户登录的功能
 */
@Slf4j
@RequiredArgsConstructor
@Service("adminLoginService")
public class LoginServiceImpl implements LoginService
{
    private static final String                        KEY = "captcha:" + UUID.randomUUID();
    private final        RedisTemplate<String, String> redisTemplate;
    private final        SystemUserServiceImpl         systemUserServiceImpl;
    private final        CaptchaProperties             captchaProperties;
    private final        JWTProperties                 jWTProperties;
    private final        SystemUserMapper              systemUserMapper;

    /**
     * 获取图形验证码
     * <p>
     * 该方法生成一个图形验证码，并将验证码存储到 Redis 中
     * </p>
     *
     * @return CaptchaVo 包含图形验证码的 Base64 编码和验证码的键
     */
    @Override
    public CaptchaVo getCaptcha()
    {
        final SpecCaptcha specCaptcha = new SpecCaptcha(this.captchaProperties.getCaptchaWidth(),
                this.captchaProperties.getCaptchaHeight(),
                this.captchaProperties.getCaptchaLength());

        final String code = specCaptcha.text()
                                       .toLowerCase();

        this.saveCaptchaToRedis(code);

        return new CaptchaVo(specCaptcha.toBase64(), KEY);
    }

    /**
     * 将验证码存储到 Redis 中
     * <p>
     * 该方法将验证码存储到 Redis 中，并设置过期时间为 5 分钟
     * </p>
     *
     * @param code 验证码
     */
    private void saveCaptchaToRedis(final String code)
    {
        this.redisTemplate.opsForValue()
                          .set(KEY, code, this.captchaProperties.getCaptchaTtlMillis(), TimeUnit.MILLISECONDS);
    }

    /**
     * 用户登录
     * <p>
     * 该方法验证用户的登录信息，并生成 JWT
     * </p>
     *
     * @param loginVo 登录信息
     * @return 生成的 JWT 字符串
     */
    public String login(final LoginVo loginVo)
    {
        this.isCaptchaValid(loginVo.getCaptchaKey(), loginVo.getCaptchaCode());

        final SystemUser user = Optional.ofNullable(this.getUserByUserName(loginVo.getUsername()))
                                        .orElseThrow(() -> new LeaseException(ResultCodeEnum.ADMIN_USER_NOT_FOUND));

        this.validateUser(user, loginVo.getPassword());

        final Map<String, Object> claims = Map.of("userId", user.getId(), "userName", user.getName());

        return JWTUtils.createJWTToken(user.getName(),
                this.jWTProperties.getSecret(),
                this.jWTProperties.getTtlMillis(),
                claims);
    }

    /**
     * 验证图形验证码
     * <p>
     * 该方法验证图形验证码的有效性
     * </p>
     *
     * @param key  验证码的键
     * @param code 验证码
     */
    private void isCaptchaValid(final String key, final String code)
    {
        if (key == null || code == null)
        {
            throw new LeaseException(ResultCodeEnum.CAPTCHA_INVALID);
        }

        final String captcha = this.redisTemplate.opsForValue()
                                                 .get(key);

        if (captcha == null)
        {
            throw new LeaseException(ResultCodeEnum.AUTH_CAPTCHA_EXPIRED);
        }

        if (!captcha.equalsIgnoreCase(code))
        {
            throw new LeaseException(ResultCodeEnum.ADMIN_CAPTCHA_CODE_ERROR);
        }
    }

    /**
     * 根据用户名获取用户信息
     *
     * @param userName 用户名
     * @return 用户信息
     */
    private @Nullable SystemUser getUserByUserName(final String userName)
    {
        return this.systemUserMapper.selectByUserName(userName);
    }

    /**
     * 验证用户信息
     * <p>
     * 该方法验证用户的状态和密码
     * </p>
     *
     * @param user     用户信息
     * @param password 用户密码
     */
    private void validateUser(final SystemUser user, final String password)
    {
        this.isUserStatusValid(user);
        this.isPasswordValid(user, password);
    }

    /**
     * 验证用户状态
     * <p>
     * 该方法验证用户是否被禁用
     * </p>
     *
     * @param user 用户信息
     */
    private void isUserStatusValid(final SystemUser user)
    {
        if (Objects.equals(user.getStatus(), BaseStatus.DISABLE))
        {
            throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_DISABLED_ERROR);
        }
    }

    /**
     * 验证用户密码
     * <p>
     * 该方法验证用户输入的密码是否正确
     * </p>
     *
     * @param user     用户信息
     * @param password 用户密码
     */
    private void isPasswordValid(final SystemUser user, final String password)
    {
        final String encodedPassword  = DigestUtils.sha256Hex(password.getBytes());
        final String databasePassword = user.getPassword();

        if (!Objects.equals(encodedPassword, databasePassword))
        {
            log.info("用户密码错误: {}", user.getName());

            log.info("Encoded password: {} | Database password: {}", encodedPassword, databasePassword);

            throw new LeaseException(ResultCodeEnum.ADMIN_ACCOUNT_ERROR);
        }
    }
}