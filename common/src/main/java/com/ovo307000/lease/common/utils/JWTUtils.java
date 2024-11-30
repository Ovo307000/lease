package com.ovo307000.lease.common.utils;

import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.lang.Nullable;

import java.security.Key;
import java.time.Instant;
import java.util.Date;
import java.util.Map;

/**
 * JWT 工具类
 * 提供创建和验证 JWT 的方法
 */
@Slf4j
public class JWTUtils
{
    /**
     * 创建 JWT
     *
     * @param subject   JWT 的主题
     * @param secret    用于签名的密钥
     * @param ttlMillis JWT 的有效时间（毫秒）
     * @param claims    额外的声明信息
     * @return 生成的 JWT 字符串
     */
    public static String createJWTToken(@NonNull final String subject,
                                        @NonNull final String secret,
                                        @NonNull final long ttlMillis,
                                        @NonNull final Map<String, Object> claims)
    {
        // 生成签名密钥
        final Key     key = Keys.hmacShaKeyFor(secret.getBytes());
        final Instant now = new Date().toInstant();

        // 构建 JWT 并返回
        return Jwts.builder()
                   .setSubject(subject)
                   .setIssuedAt(Date.from(now))
                   .setExpiration(Date.from(now.plusMillis(ttlMillis)))
                   .addClaims(claims)
                   .signWith(key, SignatureAlgorithm.HS256)
                   .compact();
    }

    /**
     * 解析并验证 JWT 令牌的方法。
     *
     * @param jwt    the JWT 字符串，需要解析和验证的 JWT 令牌
     * @param secret the 密钥字符串，用于签名验证的密钥
     * @return 如果 JWT 解析和验证成功，返回包含 JWT 声明（Claims）的对象；如果解析或验证失败，返回 null
     * @throws ExpiredJwtException 如果 JWT 已过期，抛出此异常
     * @throws JwtException        如果 JWT 解析失败，抛出此异常
     * @throws Exception           如果发生其他异常，在日志中记录错误信息并抛出异常
     */
    public static @Nullable Claims extractJwtClaims(@NonNull final String jwt, @NonNull final String secret)
    {
        try
        {
            return Jwts.parserBuilder()
                       .setSigningKey(Keys.hmacShaKeyFor(secret.getBytes()))
                       .build()
                       .parseClaimsJws(jwt)
                       .getBody();
        }
        catch (final ExpiredJwtException expiredJwtException)
        {
            // 如果 JWT 已过期，则记录错误日志并返回 false
            log.error("JWT 已过期", expiredJwtException);

            return null;
        }
        catch (final JwtException jwtException)
        {
            // 如果 JWT 解析失败，则记录错误日志并返回 false
            log.error("JWT 解析失败", jwtException);

            return null;
        }
        catch (final Exception exception)
        {
            // 如果发生其他异常，则记录错误日志并返回 false
            log.error("JWT 验证失败", exception);

            return null;
        }
    }

    public static Map<String, Object> generateUserClaims(@NonNull final Long id, @NonNull final String phone)
    {
        return Map.of("id", id, "phone", phone);
    }
}
