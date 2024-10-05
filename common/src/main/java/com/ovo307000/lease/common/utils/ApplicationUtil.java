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

/**
 * 应用程序启动相关的工具类
 */
public class ApplicationUtil
{
    // 日志记录器
    private static final Logger log = LoggerFactory.getLogger(ApplicationUtil.class);

    /**
     * 记录应用程序启动日志
     *
     * @param context  Spring 应用程序上下文
     * @param startTime 应用程序开始启动的时间戳
     * @param docPath  应用程序文档路径
     */
    public static void logApplicationStartup(final ConfigurableApplicationContext context,
                                             final long startTime,
                                             final String docPath)
    {
        // 获取环境配置
        final ConfigurableEnvironment env                = context.getEnvironment();
        final String                  protocol           = "http";
        final String                  hostAddress        = getHostAddress();
        final String                  serverPort         = env.getProperty("server.port", "8080");
        final String                  contextPath        = getContextPath(env);
        final String                  applicationName    = env.getProperty("spring.application.name");
        final String                  applicationVersion = env.getProperty("spring.application.version", "1.0.0");
        final long                    startupTime        = System.currentTimeMillis() - startTime;

        // 记录启动日志
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

    /**
     * 获取主机地址
     *
     * @return 主机地址，如果无法确定则返回 "localhost"
     */
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

    /**
     * 获取上下文路径
     *
     * @param env 环境配置
     * @return 上下文路径，默认为 "/"
     */
    private static String getContextPath(final ConfigurableEnvironment env)
    {
        String contextPath = env.getProperty("server.servlet.context-path", "/");
        if (!contextPath.startsWith("/"))
        {
            contextPath = "/" + contextPath;
        }
        return contextPath;
    }

    /**
     * 构建启动日志消息模板
     *
     * @return 启动日志消息模板
     */
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

    /**
     * 获取当前日期和时间
     *
     * @return 当前日期和时间的字符串表示
     */
    private static String getCurrentDateTime()
    {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    /**
     * 获取本地时区与UTC之间的时差
     *
     * @return 时差的字符串表示，格式为 "+/-HH:MM"
     */
    private static String getUtcOffset()
    {
        final long offsetInMillis  = TimeZone.getDefault()
                                             .getOffset(System.currentTimeMillis());
        final long offsetInHours   = offsetInMillis / (1000 * 60 * 60);
        final long offsetInMinutes = (Math.abs(offsetInMillis) / (1000 * 60)) % 60;
        return String.format("%+03d:%02d", offsetInHours, offsetInMinutes);
    }

    /**
     * 获取当前使用的内存量（以MB为单位）
     *
     * @return 当前使用的内存量，单位为MB
     */
    private static long getUsedMemoryInMB()
    {
        return Runtime.getRuntime()
                      .totalMemory() / (1024 * 1024);
    }
}
