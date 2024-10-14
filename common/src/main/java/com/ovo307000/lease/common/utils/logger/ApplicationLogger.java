package com.ovo307000.lease.common.utils.logger;

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
 * 应用日志工具类，用于记录应用启动日志
 */
public class ApplicationLogger
{
    // 日志记录器
    private static final Logger log = LoggerFactory.getLogger(ApplicationLogger.class);

    /**
     * 记录应用启动日志
     *
     * @param context  Spring 应用上下文
     * @param startTime 应用启动时间戳
     * @param docPath  应用文档路径
     */
    public static void logApplicationStartup(final ConfigurableApplicationContext context,
                                             final long startTime,
                                             final String docPath)
    {
        // 获取应用环境信息
        final ConfigurableEnvironment env     = context.getEnvironment();
        // 创建应用信息对象
        final AppInfo                 appInfo = new AppInfo(env, startTime, docPath);

        // 记录应用启动日志
        log.info(getStartupLogMessage(), appInfo.toArray());
    }

    /**
     * 构建应用启动日志消息模板
     *
     * @return 日志消息模板
     */
    private static String getStartupLogMessage()
    {
        // 使用多行字符串构建日志消息模板
        return """
               ==========================================================
               应用程序启动成功!
               ==========================================================
               应用信息:
                 名称: \t\t{}
                 版本: \t\t{}
               
               访问地址:
                 本地: \t\t{}://localhost:{}{}
                 远程: \t\t{}://{}:{}{}
                 文档: \t\t{}
                 Minio: \t\t{}
               
               系统信息:
                 Java版本: \t{}
                 Java路径: \t{}
                 操作系统: \t{} ({})
               
               时间信息:
                 系统时间: \t{}
                 时区信息: \t{} (UTC {})
               
               性能信息:
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
        // 格式化当前日期和时间为指定格式的字符串
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }

    /**
     * 获取当前时区偏移量
     *
     * @return 时区偏移量的字符串表示
     */
    private static String getUtcOffset()
    {
        // 计算并格式化时区偏移量
        final long offsetInMillis  = TimeZone.getDefault()
                                             .getOffset(System.currentTimeMillis());
        final long offsetInHours   = offsetInMillis / (1000 * 60 * 60);
        final long offsetInMinutes = (Math.abs(offsetInMillis) / (1000 * 60)) % 60;
        return String.format("%+03d:%02d", offsetInHours, offsetInMinutes);
    }

    /**
     * 获取当前使用的内存大小（以MB为单位）
     *
     * @return 当前使用的内存大小（以MB为单位）
     */
    private static long getUsedMemoryInMB()
    {
        // 计算并返回当前使用的内存大小（以MB为单位）
        return Runtime.getRuntime()
                      .totalMemory() / (1024 * 1024);
    }

    /**
     * 应用信息内部类，用于存储应用相关的信息
     */
    private static class AppInfo
    {
        // 应用名称、版本、协议、端口、上下文路径、主机地址、文档路径、启动时间、Minio端点等信息
        private final String applicationName;
        private final String applicationVersion;
        private final String protocol;
        private final String serverPort;
        private final String contextPath;
        private final String hostAddress;
        private final String docPath;
        private final long   startupTime;
        private final String minioEndpoint;

        /**
         * 构造函数，初始化应用信息
         *
         * @param env     Spring 应用环境
         * @param startTime 应用启动时间戳
         * @param docPath  应用文档路径
         */
        AppInfo(final ConfigurableEnvironment env, final long startTime, final String docPath)
        {
            this.applicationName    = env.getProperty("spring.application.name");
            this.applicationVersion = env.getProperty("spring.application.version", "1.0.0");
            this.protocol           = "http";
            this.serverPort         = env.getProperty("server.port", "8080");
            this.contextPath        = this.getContextPath(env);
            this.hostAddress        = this.getHostAddress();
            this.docPath            = docPath;
            this.startupTime        = System.currentTimeMillis() - startTime;
            this.minioEndpoint      = env.getProperty("storage.minio.endpoint", "未配置");
        }

        /**
         * 获取应用上下文路径
         *
         * @param env Spring 应用环境
         * @return 应用上下文路径
         */
        private String getContextPath(final ConfigurableEnvironment env)
        {
            String contextPath = env.getProperty("server.servlet.context-path", "/");
            if (!contextPath.startsWith("/"))
            {
                contextPath = "/" + contextPath;
            }
            return contextPath;
        }

        /**
         * 获取主机地址
         *
         * @return 主机地址
         */
        private String getHostAddress()
        {
            try
            {
                // 尝试获取本地主机地址，如果失败则返回"localhost"
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
         * 将应用信息转换为对象数组，以便用于日志格式化输出
         *
         * @return 包含应用信息的对象数组
         */
        public Object[] toArray()
        {
            return new Object[]{
                    this.applicationName, this.applicationVersion, this.protocol, this.serverPort, this.contextPath, this.protocol, this.hostAddress,
                    this.serverPort, this.contextPath, this.protocol + "://" +
                                                       "localhost" + ":" + this.serverPort + this.contextPath +
                                                       this.docPath,
                    this.minioEndpoint, System.getProperty("java.version"), System.getProperty("java.home"),
                    System.getProperty("os.name"), System.getProperty("os.arch"), getCurrentDateTime(),
                    TimeZone.getDefault().getID(), getUtcOffset(), this.startupTime, getUsedMemoryInMB(),
                    Runtime.getRuntime().availableProcessors()
            };
        }
    }
}
