package com.ovo307000.lease.web.admin.costom.configuration;

import com.ovo307000.lease.web.admin.costom.configuration.converter.StringToItemTypeConverter;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@RequiredArgsConstructor
public class WebMvcConfiguration implements WebMvcConfigurer
{
    private final StringToItemTypeConverter stringToItemTypeConverter;

    @Override
    public void addFormatters(final FormatterRegistry registry)
    {
        registry.addConverter(this.stringToItemTypeConverter);
    }
}
