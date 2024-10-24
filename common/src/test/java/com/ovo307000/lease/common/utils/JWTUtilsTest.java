package com.ovo307000.lease.common.utils;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.junit.jupiter.api.Test;

import java.util.Collections;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

class JWTUtilsTest
{
    private static final String SECRET = "mysecretkeymysecretkeymysecretkeymysecretkey";

    @Test
    void createJWTToken_shouldReturnValidJWT()
    {
        final String jwt = JWTUtils.createJWTToken("subject", SECRET, 1000, Collections.emptyMap());
        assertNotNull(Jwts.parserBuilder()
                          .setSigningKey(Keys.hmacShaKeyFor(SECRET.getBytes()))
                          .build()
                          .parseClaimsJws(jwt));
    }

    @Test
    void parseJWTToken_shouldReturnTrueForValidJWT()
    {
        final String jwt = JWTUtils.createJWTToken("subject", SECRET, 1000, Collections.emptyMap());
        assertTrue(JWTUtils.parseJWTToken(jwt, SECRET));
    }

    @Test
    void parseJWTToken_shouldReturnFalseForInvalidJWT()
    {
        final String jwt = JWTUtils.createJWTToken("subject", SECRET, 1000, Collections.emptyMap());
        assertFalse(JWTUtils.parseJWTToken(jwt, "wrongsecret"));
    }

    @Test
    void parseJWTToken_shouldReturnFalseForExpiredJWT() throws InterruptedException
    {
        final String jwt = JWTUtils.createJWTToken("subject", SECRET, 1, Collections.emptyMap());
        Thread.sleep(2);
        assertFalse(JWTUtils.parseJWTToken(jwt, SECRET));
    }

    @Test
    void createJWTToken_shouldIncludeClaims()
    {
        final Map<String, Object> claims = Map.of("claimKey", "claimValue");
        final String              jwt    = JWTUtils.createJWTToken("subject", SECRET, 1000, claims);
        assertEquals("claimValue",
                Jwts.parserBuilder()
                    .setSigningKey(Keys.hmacShaKeyFor(SECRET.getBytes()))
                    .build()
                    .parseClaimsJws(jwt)
                    .getBody()
                    .get("claimKey"));
    }

    @Test
    void parseJWTToken_shouldReturnFalseForMalformedJWT()
    {
        final String malformedJwt = "malformed.jwt.token";
        assertFalse(JWTUtils.parseJWTToken(malformedJwt, SECRET));
    }
}