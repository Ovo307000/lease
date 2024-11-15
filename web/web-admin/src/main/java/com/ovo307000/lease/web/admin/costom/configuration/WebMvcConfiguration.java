package com.ovo307000.lease.web.admin.costom.configuration;

import com.ovo307000.lease.web.admin.interception.AuthenticationInterceptor;
import com.ovo307000.lease.common.properties.auth.InterceptionProperties;
import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.web.admin.costom.configuration.converter.StringToBaseEnumConverterFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.Objects;

/**
 * WebMvcConfiguration 是一个 Spring 配置类，用于自定义 Web MVC 配置。
 * 该类实现了 WebMvcConfigurer 接口，并使用 @Configuration 注解标记为配置类。
 */
@Configuration
@RequiredArgsConstructor
public class WebMvcConfiguration implements WebMvcConfigurer
{
    // 注入 StringToBaseEnumConverterFactory，用于将字符串转换为枚举类型
    private final StringToBaseEnumConverterFactory stringToBaseEnumConverterFactory;
    private final JWTProperties                    jWTProperties;
    private final InterceptionProperties           interceptionProperties;

    /**
     * 添加自定义的转换器工厂到 FormatterRegistry。
     *
     * @param registry FormatterRegistry 对象，用于注册格式化器和转换器。
     */
    @Override
    public void addFormatters(final FormatterRegistry registry)
    {
        // 将 StringToBaseEnumConverterFactory 添加到注册表中
        registry.addConverterFactory(this.stringToBaseEnumConverterFactory);
    }

    /**
     * 添加自定义的拦截器到 InterceptorRegistry。
     *
     * @param registry InterceptorRegistry 对象，用于注册拦截器。
     */
    @Override
    public void addInterceptors(final InterceptorRegistry registry)
    {
        final String[] excludePathPatterns = Objects.requireNonNull(this.interceptionProperties.getExcludePathPatterns());
        final String[] includePathPatterns = Objects.requireNonNull(this.interceptionProperties.getIncludePathPatterns());
        final String[] excludeHttpMethods  = Objects.requireNonNull(this.interceptionProperties.getExcludeHttpMethods());
        final String[] includeHttpMethods  = Objects.requireNonNull(this.interceptionProperties.getIncludeHttpMethods());

        // 将 AuthenticationInterceptor 添加到注册表中，并配置路径和方法的包含和排除规则
        registry.addInterceptor(new AuthenticationInterceptor(this.jWTProperties))
                .addPathPatterns(includePathPatterns)
                .excludePathPatterns(excludePathPatterns)
                .excludePathPatterns(excludeHttpMethods)
                .addPathPatterns(includeHttpMethods);
    }
}