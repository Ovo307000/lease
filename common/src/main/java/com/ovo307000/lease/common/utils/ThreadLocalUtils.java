package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.enumeration.ThreadLocalKey;

import java.util.EnumMap;
import java.util.Map;
import java.util.Optional;

/**
 * 线程本地工具类
 * 提供在当前线程中存储和检索数据的方法
 */
public class ThreadLocalUtils
{
    // 使用 ThreadLocal 存储一个 EnumMap，用于存储线程本地变量
    private static final ThreadLocal<Map<ThreadLocalKey, Object>> threadLocalMap = ThreadLocal.withInitial(() -> new EnumMap<>(ThreadLocalKey.class));

    /**
     * 设置线程本地变量
     *
     * @param key   线程本地变量的键
     * @param value 线程本地变量的值
     * @param <T>   线程本地变量的类型
     */
    public static <T> void set(final ThreadLocalKey key, final T value)
    {
        threadLocalMap.get().put(key, value);

        // 为了方便在拦截器中获取当前线程，将当前线程也存储在线程本地变量中
        threadLocalMap.get().put(ThreadLocalKey.CURRENT_THREAD, Thread.currentThread());
    }

    /**
     * 获取线程本地变量
     *
     * @param key      线程本地变量的键
     * @param valueType 线程本地变量的类型
     * @param <T>      线程本地变量的类型
     * @return 包含线程本地变量的 Optional 对象，如果不存在则返回 Optional.empty()
     */
    public static <T> Optional<T> get(final ThreadLocalKey key, final Class<T> valueType)
    {
        return Optional.ofNullable(valueType.cast(threadLocalMap.get().get(key)));
    }

    /**
     * 移除线程本地变量
     *
     * @param key 线程本地变量的键
     * @param <T> 线程本地变量的类型
     * @return 如果成功移除则返回 true，否则返回 false
     */
    public static <T> boolean remove(final ThreadLocalKey key)
    {
        return threadLocalMap.get().remove(key) != null;
    }

    /**
     * 清除所有线程本地变量
     *
     * @return 返回清除前的线程本地变量的 Map
     */
    public static Map<ThreadLocalKey, Object> clear()
    {
        final Map<ThreadLocalKey, Object> map = threadLocalMap.get();
        threadLocalMap.remove();
        return map;
    }
}