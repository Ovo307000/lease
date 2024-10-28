package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.enumeration.ThreadLocalKey;

import java.util.EnumMap;
import java.util.Map;
import java.util.Optional;

public class ThreadLocalUtils
{
    private static final ThreadLocal<Map<ThreadLocalKey, Object>> threadLocalMap = ThreadLocal.withInitial(() -> new EnumMap<>(
            ThreadLocalKey.class));

    public static <T> void set(final ThreadLocalKey key, final T value)
    {
        threadLocalMap.get()
                      .put(key, value);
    }

    public static <T> Optional<T> get(final ThreadLocalKey key, final Class<T> valueType)
    {
        return Optional.ofNullable(valueType.cast(threadLocalMap.get()
                                                                .get(key)));
    }

    public static <T> boolean remove(final ThreadLocalKey key)
    {
        return threadLocalMap.get()
                             .remove(key) != null;
    }

    public static Map<ThreadLocalKey, Object> clear()
    {
        final Map<ThreadLocalKey, Object> map = threadLocalMap.get();

        threadLocalMap.remove();

        return map;
    }
}
