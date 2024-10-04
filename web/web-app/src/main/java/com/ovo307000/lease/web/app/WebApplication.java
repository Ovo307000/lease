package com.ovo307000.lease.web.app;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ovo307000.lease.web.app.mapper")
public class WebApplication
{
    public static void main(final String[] args)
    {
        SpringApplication.run(WebApplication.class, args);
    }
}
