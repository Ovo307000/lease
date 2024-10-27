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

@Slf4j
@RequiredArgsConstructor
public class AuthenticationInterceptor implements HandlerInterceptor
{
    private static final String        ACCESS_TOKEN = "access_token";
    private final        JWTProperties jWTProperties;

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
