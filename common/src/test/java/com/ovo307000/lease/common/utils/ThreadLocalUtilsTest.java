package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.enumeration.ThreadLocalKey;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

class ThreadLocalUtilsTest
{
    // 测试 set 和 get 方法
    @Test
    void testSetAndGet()
    {
        // 设置 USER_ID 和 SESSION_ID
        ThreadLocalUtils.set(ThreadLocalKey.USER_ID, 12345);
        ThreadLocalUtils.set(ThreadLocalKey.SESSION_ID, "session-abc");

        // 验证 USER_ID 的值是否正确
        final Optional<Integer> userId = ThreadLocalUtils.get(ThreadLocalKey.USER_ID, Integer.class);
        assertTrue(userId.isPresent());
        assertEquals(12345, userId.get());

        // 验证 SESSION_ID 的值是否正确
        final Optional<String> sessionId = ThreadLocalUtils.get(ThreadLocalKey.SESSION_ID, String.class);
        assertTrue(sessionId.isPresent());
        assertEquals("session-abc", sessionId.get());
    }

    // 测试类型转换错误
    @Test
    void testGetWithWrongType()
    {
        ThreadLocalUtils.set(ThreadLocalKey.USER_ID, 12345);

        // 尝试以 String 类型获取 USER_ID，应抛出 ClassCastException
        assertThrows(ClassCastException.class, () -> ThreadLocalUtils.get(ThreadLocalKey.USER_ID, String.class));
    }

    // 测试 remove 方法
    @Test
    void testRemove()
    {
        ThreadLocalUtils.set(ThreadLocalKey.USER_ID, 12345);
        final boolean removed = ThreadLocalUtils.remove(ThreadLocalKey.USER_ID);

        // 验证 USER_ID 被成功移除
        assertTrue(removed);
        assertFalse(ThreadLocalUtils.get(ThreadLocalKey.USER_ID, Integer.class)
                                    .isPresent());
    }

    // 测试 clear 方法
    @Test
    void testClear()
    {
        ThreadLocalUtils.set(ThreadLocalKey.USER_ID, 12345);
        ThreadLocalUtils.set(ThreadLocalKey.SESSION_ID, "session-abc");

        // 清除所有键值对
        final Map<ThreadLocalKey, Object> clearedMap = ThreadLocalUtils.clear();

        // 验证 clear 方法返回的 Map 包含所有键值对
        assertEquals(2, clearedMap.size());
        assertEquals(12345, clearedMap.get(ThreadLocalKey.USER_ID));
        assertEquals("session-abc", clearedMap.get(ThreadLocalKey.SESSION_ID));

        // 验证清除后，获取任何键都应为空
        assertFalse(ThreadLocalUtils.get(ThreadLocalKey.USER_ID, Integer.class)
                                    .isPresent());
        assertFalse(ThreadLocalUtils.get(ThreadLocalKey.SESSION_ID, String.class)
                                    .isPresent());
    }

    // 每次测试后清理线程本地变量，避免线程间数据干扰
    @AfterEach
    void tearDown()
    {
        ThreadLocalUtils.clear();
    }
}
