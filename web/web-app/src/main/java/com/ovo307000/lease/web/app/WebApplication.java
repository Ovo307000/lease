package com.ovo307000.lease.web.app;

import com.ovo307000.lease.common.utils.logger.ApplicationLogger;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
@MapperScan("com.ovo307000.lease.web.app.mapper")
public class WebApplication
{
    public static void main(final String[] args)
    {
        final long start = System.currentTimeMillis();

        final ConfigurableApplicationContext context = SpringApplication.run(WebApplication.class, args);

        ApplicationLogger.logApplicationStartup(context, start, "doc.html");
    }
}
