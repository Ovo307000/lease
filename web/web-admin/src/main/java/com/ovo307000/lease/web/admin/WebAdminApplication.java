package com.ovo307000.lease.web.admin;

import com.ovo307000.lease.common.utils.ApplicationLogger;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

@Slf4j
@SpringBootApplication
@ComponentScan("com.ovo307000.lease.common")
@MapperScan("com.ovo307000.lease.web.admin.mapper")
@ConfigurationPropertiesScan("com.ovo307000.lease.common.properties")
public class WebAdminApplication
{
    public static void main(final String[] args)
    {
        final long startTime = System.currentTimeMillis();

        final ConfigurableApplicationContext context = SpringApplication.run(WebAdminApplication.class, args);

        ApplicationLogger.logApplicationStartup(context, startTime, "doc.html");
    }
}