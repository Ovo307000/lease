package com.ovo307000.lease.web.app.controller.configuration;

import com.ovo307000.lease.common.properties.auth.InterceptionProperties;
import com.ovo307000.lease.web.app.interceptor.AuthenticationInterceptor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@RequiredArgsConstructor
public class WebMvcConfiguration implements WebMvcConfigurer
{
    private final InterceptionProperties    interceptionProperties;
    private final AuthenticationInterceptor authenticationInterceptor;

    @Override
    public void addInterceptors(final InterceptorRegistry registry)
    {
        final String[] includeHttpMethods  = this.interceptionProperties.getIncludeHttpMethods();
        final String[] excludeHttpMethods  = this.interceptionProperties.getExcludeHttpMethods();
        final String[] includePathPatterns = this.interceptionProperties.getIncludePathPatterns();
        final String[] excludePathPatterns = this.interceptionProperties.getExcludePathPatterns();

        registry.addInterceptor(this.authenticationInterceptor)
                .addPathPatterns(includePathPatterns)
                .excludePathPatterns(excludePathPatterns)
                .excludePathPatterns(excludeHttpMethods)
                .addPathPatterns(includeHttpMethods);
    }
}
