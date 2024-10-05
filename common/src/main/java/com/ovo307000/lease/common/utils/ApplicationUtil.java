package com.ovo307000.lease.common.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class ApplicationUtil
{
    private static final Logger log = LoggerFactory.getLogger(ApplicationUtil.class);

    public static void logApplicationStartup(final ConfigurableApplicationContext context,
                                             final long startTime,
                                             final String docPath)
    {
        final ConfigurableEnvironment env                = context.getEnvironment();
        final String                  protocol           = "http";
        final String                  hostAddress        = getHostAddress();
        final String                  serverPort         = env.getProperty("server.port", "8080");
        final String                  contextPath        = getContextPath(env);
        final String                  applicationName    = env.getProperty("spring.application.name");
        final String                  applicationVersion = env.getProperty("spring.application.version", "1.0.0");
        final long                    startupTime        = System.currentTimeMillis() - startTime;

        log.info(getStartupLogMessage(),
                applicationName,
                applicationVersion,
                protocol,
                serverPort,
                contextPath,
                protocol,
                hostAddress,
                serverPort,
                contextPath,
                protocol,
                serverPort,
                contextPath,
                docPath,
                protocol,
                hostAddress,
                serverPort,
                contextPath,
                docPath,
                System.getProperty("java.version"),
                System.getProperty("java.home"),
                System.getProperty("os.name"),
                System.getProperty("os.arch"),
                getCurrentDateTime(),
                TimeZone.getDefault()
                        .getID(),
                getUtcOffset(),
                startupTime,
                getUsedMemoryInMB(),
                Runtime.getRuntime()
                       .availableProcessors());
    }

    private static String getHostAddress()
    {
        try
        {
            return InetAddress.getLocalHost()
                              .getHostAddress();
        }
        catch (final UnknownHostException e)
        {
            log.warn("无法确定主机地址: {}", e.getMessage());
            return "localhost";
        }
    }

    private static String getContextPath(final ConfigurableEnvironment env)
    {
        String contextPath = env.getProperty("server.servlet.context-path", "/");
        if (!contextPath.startsWith("/"))
        {
            contextPath = "/" + contextPath;
        }
        return contextPath;
    }

    private static String getStartupLogMessage()
    {
        return """
               ==========================================================
               应用程序启动成功!
               ==========================================================
               应用名称: \t{}
               应用版本: \t{}
               访问地址: \t{}://localhost:{}{}
                       \t{}://{}:{}{}
               文档地址: \t{}://localhost:{}{}{}
                       \t{}://{}:{}{}{}
               Java版本: \t{}
               Java路径: \t{}
               操作系统: \t{} ({})
               系统时间: \t{}
               时区信息: \t{} (UTC {})
               启动用时: \t{} 毫秒
               内存使用: \t{} MB
               CPU核心: \t{}
               ==========================================================
               """;
    }

    private static String getCurrentDateTime()
    {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    private static String getUtcOffset()
    {
        final long offsetInMillis  = TimeZone.getDefault()
                                             .getOffset(System.currentTimeMillis());
        final long offsetInHours   = offsetInMillis / (1000 * 60 * 60);
        final long offsetInMinutes = (Math.abs(offsetInMillis) / (1000 * 60)) % 60;
        return String.format("%+03d:%02d", offsetInHours, offsetInMinutes);
    }

    private static long getUsedMemoryInMB()
    {
        return Runtime.getRuntime()
                      .totalMemory() / (1024 * 1024);
    }
}