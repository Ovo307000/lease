package com.ovo307000.lease.web.app.interceptor;

import com.ovo307000.lease.common.enumeration.ThreadLocalKey;
import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.common.utils.JWTUtils;
import com.ovo307000.lease.common.utils.ThreadLocalUtils;
import io.jsonwebtoken.Claims;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.jetbrains.annotations.NotNull;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import java.util.Objects;

@Slf4j
@Component
@RequiredArgsConstructor
public class AuthenticationInterceptor implements HandlerInterceptor
{
    private static final String        ACCESS = "access_token";
    private final        JWTProperties jWTProperties;

    @Override
    public boolean preHandle(@NotNull final HttpServletRequest request,
                             @NotNull final HttpServletResponse response,
                             @NotNull final Object handler) throws Exception
    {
        final String token = Objects.requireNonNull(this.getAccessToken(request), "Not found access token in request");

        try
        {
            final Claims claims = JWTUtils.parseJWTToken(token, this.jWTProperties.getSecret());

            final Long userId = Objects.requireNonNull(claims.get("userId", Long.class), "Not found user id in token");
            final String phone = Objects.requireNonNull(claims.get("phone", String.class), "Not found phone in token");


            log.info("User: {} with phone: {} is requesting", userId, phone);

            ThreadLocalUtils.set(ThreadLocalKey.USER_CLAIMS, claims);
            ThreadLocalUtils.set(ThreadLocalKey.ACCESS_TOKEN, token);
            ThreadLocalUtils.set(ThreadLocalKey.CURRENT_THREAD, Thread.currentThread());

            return true;
        }
        catch (final Exception exception)
        {
            log.error("Invalid token: {} because of exception: {}", token, exception.getMessage());

            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            return false;
        }
    }

    @Override
    public void afterCompletion(@NotNull final HttpServletRequest request,
                                @NotNull final HttpServletResponse response,
                                @NotNull final Object handler,
                                final Exception ex) throws Exception
    {
        ThreadLocalUtils.clear();
    }

    private @Nullable String getAccessToken(@NotNull final HttpServletRequest request)
    {
        return request.getHeader(ACCESS);
    }
}
