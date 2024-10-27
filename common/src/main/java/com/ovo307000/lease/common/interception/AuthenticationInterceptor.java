package com.ovo307000.lease.common.interception;

import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.common.utils.JWTUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.jetbrains.annotations.NotNull;
import org.springframework.web.servlet.HandlerInterceptor;

/**
 * 认证拦截器，用于拦截和验证HTTP请求的有效性和授权。
 */
@Slf4j
@RequiredArgsConstructor
public class AuthenticationInterceptor implements HandlerInterceptor
{
    private static final String        ACCESS_TOKEN = "access_token";
    private final        JWTProperties jWTProperties;

    /**
     * 在处理请求之前进行拦截。
     *
     * @param request  当前的HTTP请求
     * @param response 当前的HTTP响应
     * @param handler  处理器
     * @return 如果请求有效且已授权，则返回true；否则返回false
     * @throws Exception 处理过程中可能抛出的异常
     */
    @Override
    public boolean preHandle(@NotNull final HttpServletRequest request,
                             @NotNull final HttpServletResponse response,
                             @NotNull final Object handler) throws Exception
    {
        final String token = request.getHeader(ACCESS_TOKEN);

        if (!this.isRequestValid(token))
        {
            // 否则返回未授权状态
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

            return false;
        }

        return true;
    }

    /**
     * 验证请求的有效性。
     *
     * @param token 当前请求的JWT令牌
     * @return 如果令牌有效，则返回true；否则返回false
     */
    private boolean isRequestValid(@NonNull final String token)
    {
        try
        {
            JWTUtils.parseJWTToken(token, this.jWTProperties.getSecret());
        }
        catch (final Exception e)
        {
            log.error("JWT 验证失败: {}", e.getMessage());
            return false;
        }

        return true;
    }
}