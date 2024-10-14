package com.ovo307000.lease.common.utils.logger;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

@Slf4j
public class ApplicationLogger
{
    public static void logApplicationStartup(final ConfigurableApplicationContext context,
                                             final long startTime,
                                             final String docPath)
    {
        final ConfigurableEnvironment env     = context.getEnvironment();
        final AppInfo                 appInfo = new AppInfo(env, startTime, docPath);

        log.info(appInfo.getFormattedStartupLogMessage());
    }

    private static class AppInfo
    {
        private static final String LOCALHOST = "localhost";
        private static final String LOGO      = """
                                                  ___            _____  ___ _____ ___   ___   ___ \s
                                                 / _ \\__   _____|___ / / _ \\___  / _ \\ / _ \\ / _ \\\s
                                                | | | \\ \\ / / _ \\ |_ \\| | | | / / | | | | | | | | |
                                                | |_| |\\ V / (_) |__) | |_| |/ /| |_| | |_| | |_| |
                                                 \\___/  \\_/ \\___/____/ \\___//_/  \\___/ \\___/ \\___/\s
                                                                                                  \s
                                                """;
        private final String applicationName;
        private final String applicationVersion;
        private final String protocol;
        private final String serverPort;
        private final String contextPath;
        private final String hostAddress;
        private final String docPath;
        private final long   startupTime;
        private final String minioEndpoint;
        private final String javaVersion;
        private final String javaHome;
        private final String osName;
        private final String osArch;
        private final String currentDateTime;
        private final String timeZoneId;
        private final String utcOffset;
        private final long   usedMemoryInMB;
        private final int    availableProcessors;

        AppInfo(final ConfigurableEnvironment env, final long startTime, final String docPath)
        {
            this.applicationName     = env.getProperty("spring.application.name");
            this.applicationVersion  = env.getProperty("spring.application.version", "1.0.0");
            this.protocol            = "http";
            this.serverPort          = env.getProperty("server.port", "8080");
            this.contextPath         = this.getContextPath(env);
            this.hostAddress         = this.getHostAddress();
            this.docPath             = docPath;
            this.startupTime         = System.currentTimeMillis() - startTime;
            this.minioEndpoint       = env.getProperty("storage.minio.endpoint", "未配置");
            this.javaVersion         = System.getProperty("java.version");
            this.javaHome            = System.getProperty("java.home");
            this.osName              = System.getProperty("os.name");
            this.osArch              = System.getProperty("os.arch");
            this.currentDateTime     = this.getCurrentDateTime();
            this.timeZoneId          = TimeZone.getDefault()
                                               .getID();
            this.utcOffset           = this.getUtcOffset();
            this.usedMemoryInMB      = this.getUsedMemoryInMB();
            this.availableProcessors = Runtime.getRuntime()
                                              .availableProcessors();
        }

        private String getContextPath(final ConfigurableEnvironment env)
        {
            final String contextPath = env.getProperty("server.servlet.context-path", "/");
            return contextPath.startsWith("/") ? contextPath : "/" + contextPath;
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
                return LOCALHOST;
            }
        }

        private String getCurrentDateTime()
        {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        }

        private String getUtcOffset()
        {
            final long offsetInMillis = TimeZone.getDefault()
                                                .getOffset(System.currentTimeMillis());
            final long offsetInHours   = offsetInMillis / (1000 * 60 * 60);
            final long offsetInMinutes = (Math.abs(offsetInMillis) / (1000 * 60)) % 60;
            return String.format("%+03d:%02d", offsetInHours, offsetInMinutes);
        }

        private long getUsedMemoryInMB()
        {
            return Runtime.getRuntime()
                          .totalMemory() / (1024 * 1024);
        }

        public String getFormattedStartupLogMessage()
        {
            return String.format("""
                                 ==========================================================
                                 应用程序启动成功!
                                 ==========================================================
                                 应用信息:
                                   名称: \t\t%s
                                   版本: \t\t%s
                                 
                                 访问地址:
                                   本地: \t\t%s://%s:%s%s
                                   远程: \t\t%s://%s:%s%s
                                   文档: \t\t%s
                                   Minio: \t\t%s
                                 
                                 系统信息:
                                   Java版本: \t%s
                                   Java路径: \t%s
                                   操作系统: \t%s (%s)
                                 
                                 时间信息:
                                   系统时间: \t%s
                                   时区信息: \t%s (UTC %s)
                                 
                                 性能信息:
                                   启动用时: \t%d 毫秒
                                   内存使用: \t%d MB
                                   CPU核心: \t%d
                                 ==========================================================
                                 
                                 
                                    %s
                                 """,
                    this.applicationName,
                    this.applicationVersion,
                    this.protocol,
                    LOCALHOST,
                    this.serverPort,
                    this.contextPath,
                    this.protocol,
                    this.hostAddress,
                    this.serverPort,
                    this.contextPath,
                    this.protocol + "://" + LOCALHOST + ":" + this.serverPort + this.contextPath + this.docPath,
                    this.minioEndpoint,
                    this.javaVersion,
                    this.javaHome,
                    this.osName,
                    this.osArch,
                    this.currentDateTime,
                    this.timeZoneId,
                    this.utcOffset,
                    this.startupTime,
                    this.usedMemoryInMB,
                    this.availableProcessors,
                    LOGO);
        }
    }
}