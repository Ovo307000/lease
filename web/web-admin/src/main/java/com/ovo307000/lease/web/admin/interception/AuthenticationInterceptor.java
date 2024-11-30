package com.ovo307000.lease.web.admin.interception;

import com.ovo307000.lease.common.enumeration.ThreadLocalKey;
import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.common.utils.JWTUtils;
import com.ovo307000.lease.common.utils.ThreadLocalUtils;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtException;
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
        final String token  = request.getHeader(ACCESS_TOKEN);
        final Claims claims = this.isRequestValid(token);

        if (claims != null)
        {
            // 如果请求有效，则将用户声明信息和令牌放入线程本地变量中
            ThreadLocalUtils.set(ThreadLocalKey.USER_CLAIMS, claims);
            ThreadLocalUtils.set(ThreadLocalKey.ACCESS_TOKEN, token);

            return true;
        }
        else
        {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return false;
        }
    }

    /**
     * 验证请求的有效性。
     *
     * @param token 当前请求的JWT令牌
     * @return 如果令牌有效，则返回true；否则返回false
     */
    private Claims isRequestValid(@NonNull final String token)
    {
        try
        {
            return JWTUtils.extractJwtClaims(token, this.jWTProperties.getSecret());
        }
        catch (final JwtException jwtException)
        {
            log.error("JWT 验证失败: {}", jwtException.getMessage());

            return null;
        }
    }

    /**
     * 在请求处理之后进行拦截。
     *
     * @param request  当前的HTTP请求
     * @param response 当前的HTTP响应
     * @param handler  处理器
     * @param ex       异常
     * @throws Exception 处理过程中可能抛出的异常
     */
    @Override
    public void afterCompletion(@NotNull final HttpServletRequest request,
                                @NotNull final HttpServletResponse response,
                                @NotNull final Object handler,
                                final Exception ex) throws Exception
    {
        // 清除线程本地变量, 防止内存泄漏
        ThreadLocalUtils.clear();

        if (ex != null)
        {
            log.error("请求处理过程中发生异常: {}", ex.getMessage());
        }
    }
}