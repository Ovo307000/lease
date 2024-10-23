package com.ovo307000.lease.web.admin.service.impl;

import com.ovo307000.lease.web.admin.service.LoginService;
import com.ovo307000.lease.web.admin.vo.login.CaptchaVo;
import com.wf.captcha.SpecCaptcha;
import lombok.RequiredArgsConstructor;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * 登录服务实现类
 * 提供获取图形验证码的功能
 */
@RequiredArgsConstructor
@Service("adminLoginService")
public class LoginServiceImpl implements LoginService
{
    private static final String                        KEY = "captcha:" + UUID.randomUUID();
    private final        RedisTemplate<String, String> redisTemplate;

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
        // TODO 后续通过配置文件配置验证码的宽度和高度，以及验证码的长度
        final SpecCaptcha specCaptcha = new SpecCaptcha(130, 48, 1);

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
                          .set(KEY, code, 5, TimeUnit.MINUTES);
    }
}
