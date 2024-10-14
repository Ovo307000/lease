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

public class ApplicationLogger
{
    private static final Logger log = LoggerFactory.getLogger(ApplicationLogger.class);

    public static void logApplicationStartup(final ConfigurableApplicationContext context,
                                             final long startTime,
                                             final String docPath)
    {
        final ConfigurableEnvironment env     = context.getEnvironment();
        final AppInfo                 appInfo = new AppInfo(env, startTime, docPath);

        log.info(getStartupLogMessage(), appInfo.toArray());
    }

    private static String getStartupLogMessage()
    {
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

    private static class AppInfo
    {
        private final String applicationName;
        private final String applicationVersion;
        private final String protocol;
        private final String serverPort;
        private final String contextPath;
        private final String hostAddress;
        private final String docPath;
        private final long   startupTime;
        private final String minioEndpoint;

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

        private String getContextPath(final ConfigurableEnvironment env)
        {
            String contextPath = env.getProperty("server.servlet.context-path", "/");
            if (!contextPath.startsWith("/"))
            {
                contextPath = "/" + contextPath;
            }
            return contextPath;
        }

        private String getHostAddress()
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