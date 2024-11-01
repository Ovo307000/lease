package com.ovo307000.lease.web.admin;

import com.ovo307000.lease.common.utils.logger.ApplicationLogger;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * 后台管理模块的 Spring Boot 应用程序主类
 * <p>
 * 该类用于启动 Spring Boot 应用程序，包含了各种注解，用于开启 Spring Boot 的自动配置、组件扫描、Mapper
 * 扫描、定时任务等功能。
 * </p>
 */
@EnableScheduling
@SpringBootApplication
@MapperScan("com.ovo307000.lease.web.admin.mapper")
@ConfigurationPropertiesScan("com.ovo307000.lease.common.properties")
@ComponentScan(basePackages = {"com.ovo307000.lease.common", "com.ovo307000.lease.web.admin"})
public class WebAdminApplication
{
    /**
     * main 方法，用于启动 Spring Boot 应用程序
     * <p>
     * 该方法将调用 setupApplication 方法，用于设置应用程序的启动参数。
     * </p>
     *
     * @param args 启动参数
     */
    public static void main(final String[] args)
    {
        setupApplication(args);
    }

    /**
     * 设置应用程序的启动参数
     * <p>
     * 该方法将调用 SpringApplication 的 run 方法，用于启动 Spring Boot 应用程序。
     * </p>
     *
     * @param args 启动参数
     */
    public static void setupApplication(final String[] args)
    {
        final long startTime = System.currentTimeMillis();

        final ConfigurableApplicationContext context = SpringApplication.run(WebAdminApplication.class, args);

        ApplicationLogger.logApplicationStartup(context, startTime, "doc.html");
    }
}
