package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.enumeration.ThreadLocalKey;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

class ThreadLocalUtilsTest
{
    @AfterEach
    void clearThreadLocal()
    {
        ThreadLocalUtils.clear();
    }

    @Test
    void setAndGetThreadLocalValue()
    {
        ThreadLocalUtils.set(ThreadLocalKey.ACCESS_TOKEN, "token123");
        final Optional<String> value = ThreadLocalUtils.get(ThreadLocalKey.ACCESS_TOKEN, String.class);
        assertTrue(value.isPresent());
        assertEquals("token123", value.get());
    }

    @Test
    void getThreadLocalValueWhenNotSet()
    {
        final Optional<String> value = ThreadLocalUtils.get(ThreadLocalKey.ACCESS_TOKEN, String.class);
        assertFalse(value.isPresent());
    }

    @Test
    void removeThreadLocalValue()
    {
        ThreadLocalUtils.set(ThreadLocalKey.ACCESS_TOKEN, "token123");
        final boolean removed = ThreadLocalUtils.remove(ThreadLocalKey.ACCESS_TOKEN);
        assertTrue(removed);
        final Optional<String> value = ThreadLocalUtils.get(ThreadLocalKey.ACCESS_TOKEN, String.class);
        assertFalse(value.isPresent());
    }

    @Test
    void removeThreadLocalValueWhenNotSet()
    {
        final boolean removed = ThreadLocalUtils.remove(ThreadLocalKey.ACCESS_TOKEN);
        assertFalse(removed);
    }

    @Test
    void clearAllThreadLocalValues()
    {
        ThreadLocalUtils.set(ThreadLocalKey.ACCESS_TOKEN, "token123");
        ThreadLocalUtils.set(ThreadLocalKey.USER_CLAIMS, "claims123");
        final Map<ThreadLocalKey, Object> clearedMap = ThreadLocalUtils.clear();
        assertTrue(clearedMap.containsKey(ThreadLocalKey.ACCESS_TOKEN));
        assertTrue(clearedMap.containsKey(ThreadLocalKey.USER_CLAIMS));
        assertFalse(ThreadLocalUtils.get(ThreadLocalKey.ACCESS_TOKEN, String.class)
                                    .isPresent());
        assertFalse(ThreadLocalUtils.get(ThreadLocalKey.USER_CLAIMS, String.class)
                                    .isPresent());
    }
}