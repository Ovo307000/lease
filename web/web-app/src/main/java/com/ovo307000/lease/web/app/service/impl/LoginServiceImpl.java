package com.ovo307000.lease.web.app.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ovo307000.lease.common.exception.LeaseException;
import com.ovo307000.lease.common.properties.auth.CodeProperties;
import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.common.utils.JWTUtils;
import com.ovo307000.lease.module.entity.UserInfo;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.app.mapper.UserInfoMapper;
import com.ovo307000.lease.web.app.service.LoginService;
import com.ovo307000.lease.web.app.vo.user.LoginVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class LoginServiceImpl implements LoginService
{
    private final CodeProperties      codeProperties;
    private final StringRedisTemplate stringRedisTemplate;
    private final UserInfoMapper      userInfoMapper;
    private final UserInfoServiceImpl userInfoServiceImpl;
    private final JWTProperties       jWTProperties;

    /**
     * 登录
     *
     * @param loginVo 登录信息
     * @return 登录成功返回JWT Token，否则返回null
     */
    @Override
    public String login(final LoginVo loginVo)
    {
        if (this.codeProperties.isEnableVerification())
        {
            log.info("Verify code for phone: {}", loginVo.getPhone());

            this.verifyCode(loginVo.getPhone(), loginVo.getCode());
        }

        final UserInfo userInfo = this.getUserInfoByPhone(loginVo.getPhone());

        if (userInfo == null)
        {
            log.info("User not found, register new user with phone: {}", loginVo.getPhone());

            final UserInfo newUserInfo = this.userInfoServiceImpl.register(loginVo.getPhone());
            final String   token       = this.generateJWTToken(newUserInfo);

            log.info("New user registered, phone: {}, token: {}", loginVo.getPhone(), token);
            return token;
        }

        if (!this.isUserStatusEnable(loginVo.getPhone()))
        {
            log.error("User account disabled, phone: {}", loginVo.getPhone());

            throw new LeaseException(ResultCodeEnum.APP_ACCOUNT_DISABLED_ERROR);
        }

        final String token = this.generateJWTToken(userInfo);
        log.info("User login success, phone: {}, token: {}", loginVo.getPhone(), token);

        return token;
    }

    /**
     * 验证验证码, 若验证码错误或过期则抛出异常
     *
     * @param phone 手机号
     * @param code  验证码
     * @throws LeaseException 验证码错误或过期
     * @see LeaseException
     */
    private void verifyCode(final String phone, final String code)
    {
        Optional.ofNullable(this.stringRedisTemplate.opsForValue()
                                                    .get(this.codeProperties.getKeyPrefix() + phone))
                .ifPresentOrElse(inputCode ->
                {
                    if (!code.equals(inputCode))
                    {
                        log.error("Code not match, input: [{}], expected: [{}]", code, inputCode);
                        throw new LeaseException(ResultCodeEnum.APP_LOGIN_CODE_ERROR);
                    }
                }, () ->
                {
                    log.error("Code expired");
                    throw new LeaseException(ResultCodeEnum.APP_LOGIN_CODE_EXPIRED);
                });
    }

    /**
     * 根据手机号获取用户信息
     *
     * @param phone 手机号
     * @return 用户信息
     */
    private @Nullable UserInfo getUserInfoByPhone(final String phone)
    {
        final LambdaQueryWrapper<UserInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(UserInfo::getPhone, phone);

        return this.userInfoMapper.selectOne(queryWrapper);
    }

    /**
     * 生成JWT Token
     *
     * @param userInfo 用户信息
     * @return JWT Token
     */
    private String generateJWTToken(final UserInfo userInfo)
    {
        final Map<String, Object> claims = JWTUtils.generateUserClaims(userInfo.getId(), userInfo.getPhone());
        return JWTUtils.createJWTToken("user",
                this.jWTProperties.getSecret(),
                this.jWTProperties.getTtlMillis(),
                claims);
    }

    /**
     * 检查用户状态是否启用
     *
     * @param phone 手机号
     * @return 用户状态是否启用
     */
    private boolean isUserStatusEnable(final String phone)
    {
        final LambdaQueryWrapper<UserInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(UserInfo::getPhone, phone)
                    .eq(UserInfo::getStatus, BaseStatus.ENABLE);

        return this.userInfoMapper.selectCount(queryWrapper) > 0;
    }
}
