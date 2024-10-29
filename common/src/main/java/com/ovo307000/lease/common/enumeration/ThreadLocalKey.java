package com.ovo307000.lease.common.enumeration;

import com.ovo307000.lease.common.interception.AuthenticationInterceptor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

/**
 * 枚举类，用于定义线程本地变量的键，将会在 {@link AuthenticationInterceptor} 中填充上下文信息
 */
@Getter
@RequiredArgsConstructor
public enum ThreadLocalKey
{
    ACCESS_TOKEN("accessToken"),    // 访问令牌
    USER_CLAIMS("userClaims");      // 用户声明

    /**
     * 线程本地变量的键
     */
    private final String key;
}