package com.ovo307000.lease.common.utils;

import io.jsonwebtoken.Claims;
import org.junit.jupiter.api.Test;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;

class JWTUtilsTest
{
    private static final String SECRET = "aVeryLongSecretKeyThatIsAtLeast256BitsLong";

    @Test
    void testCreateJWTToken()
    {
        final Map<String, Object> claims = new HashMap<>();
        claims.put("role", "admin");

        final String token = JWTUtils.createJWTToken("subject", SECRET, 1000L, claims);
        assertNotNull(token);
    }

    @Test
    void testParseJWTToken()
    {
        final Map<String, Object> claims = new HashMap<>();
        claims.put("role", "admin");

        final String token = JWTUtils.createJWTToken("subject", SECRET, 10000L, claims);
        final Claims parsedClaims = JWTUtils.parseJWTToken(token, SECRET);

        assertNotNull(parsedClaims);
        assertEquals("subject", parsedClaims.getSubject());
        assertEquals("admin", parsedClaims.get("role"));
    }

    @Test
    void testParseExpiredJWTToken()
    {
        final Map<String, Object> claims = new HashMap<>();
        claims.put("role", "admin");

        final String token        = JWTUtils.createJWTToken("subject", SECRET, -1000L, claims);
        final Claims parsedClaims = JWTUtils.parseJWTToken(token, SECRET);

        assertNull(parsedClaims);
    }

    @Test
    void testParseJWTTokenWithInvalidSecret()
    {
        final Map<String, Object> claims = new HashMap<>();
        claims.put("role", "admin");

        final String token        = JWTUtils.createJWTToken("subject", SECRET, 1000L, claims);
        final Claims parsedClaims = JWTUtils.parseJWTToken(token, "wrongSecret");

        assertNull(parsedClaims);
    }

    @Test
    void testCreateJWTTokenWithEmptyClaims()
    {
        final String token = JWTUtils.createJWTToken("subject", SECRET, 1000L, Collections.emptyMap());
        assertNotNull(token);
    }

    @Test
    void testParseJWTTokenWithEmptyClaims()
    {
        final String token        = JWTUtils.createJWTToken("subject", SECRET, 1000L, Collections.emptyMap());
        final Claims parsedClaims = JWTUtils.parseJWTToken(token, SECRET);

        assertNotNull(parsedClaims);
        assertEquals("subject", parsedClaims.getSubject());
    }
}