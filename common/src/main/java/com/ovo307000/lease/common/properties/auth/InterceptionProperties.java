package com.ovo307000.lease.common.properties.auth;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Getter
@Setter
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "auth.interception")
public class InterceptionProperties
{
    // 需要拦截的路径
    private String[] excludePathPatterns;

    // 不需要拦截的路径
    private String[] includePathPatterns;

    // 需要拦截的请求方法
    private String[] excludeHttpMethods;

    // 不需要拦截的请求方法
    private String[] includeHttpMethods;
}
