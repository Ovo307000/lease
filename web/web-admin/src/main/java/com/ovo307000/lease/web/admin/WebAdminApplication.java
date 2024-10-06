package com.ovo307000.lease.web.admin;

import com.ovo307000.lease.common.utils.ApplicationUtil;
import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@Slf4j
@SpringBootApplication
@MapperScan("com.ovo307000.lease.web.admin.mapper")
public class WebAdminApplication
{
    public static void main(final String[] args)
    {
        final long startTime = System.currentTimeMillis();

        final ConfigurableApplicationContext context = SpringApplication.run(WebAdminApplication.class, args);

        ApplicationUtil.logApplicationStartup(context, startTime, "doc.html");
    }
}