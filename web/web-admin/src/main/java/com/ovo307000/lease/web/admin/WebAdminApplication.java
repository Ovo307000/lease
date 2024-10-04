package com.ovo307000.lease.web.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ovo307000.lease.web.admin.mapper")
public class WebAdminApplication
{
    public static void main(final String[] args)
    {
        SpringApplication.run(WebAdminApplication.class, args);
    }
}
