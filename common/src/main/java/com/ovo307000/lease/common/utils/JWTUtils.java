package com.ovo307000.lease.common.utils;

import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;

import java.security.Key;
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
        final Key key = Keys.hmacShaKeyFor(secret.getBytes());

        // 构建 JWT 并返回
        return Jwts.builder()
                   .setSubject(subject)
                   .setExpiration(new Date(System.currentTimeMillis() + ttlMillis))
                   .addClaims(claims)
                   .signWith(key, SignatureAlgorithm.HS256)
                   .compact();
    }

    /**
     * 验证 JWT
     *
     * @param jwt    要验证的 JWT 字符串
     * @param secret 用于签名的密钥
     * @return 如果 JWT 有效则返回 true，否则返回 false
     */
    public static boolean parseJWTToken(@NonNull final String jwt, @NonNull final String secret)
    {
        try
        {
            // 解析并验证 JWT
            Jwts.parserBuilder()
                .setSigningKey(Keys.hmacShaKeyFor(secret.getBytes()))
                .build()
                .parseClaimsJws(jwt);

            return true;
        }
        catch (final ExpiredJwtException expiredJwtException)
        {
            // 如果 JWT 已过期，则记录错误日志并返回 false
            log.error("JWT 已过期", expiredJwtException);

            return false;
        }
        catch (final JwtException jwtException)
        {
            // 如果 JWT 解析失败，则记录错误日志并返回 false
            log.error("JWT 解析失败", jwtException);

            return false;
        }
        catch (final Exception exception)
        {
            // 如果发生其他异常，则记录错误日志并返回 false
            log.error("JWT 验证失败", exception);

            return false;
        }
    }
}