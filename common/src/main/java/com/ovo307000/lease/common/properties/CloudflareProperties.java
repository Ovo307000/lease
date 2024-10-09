package com.ovo307000.lease.common.properties;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Cloudflare R2 存储相关的配置项
 * <p>
 * 该类用于配置和管理 Cloudflare R2 存储相关的配置项
 * 通过 {@link ConfigurationProperties} 注解，Spring Boot 可以自动将配置文件中的属性加载到该类中
 */
@Getter
@Setter
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "cloudflare.r2")
public class CloudflareProperties
{
    /**
     * Cloudflare 帐户 ID => 类似于 AWS 的 Account ID
     * 可以在 R2 对象存储页面的 概述 中查看
     */
    private String accountId;

    /**
     * Cloudflare R2 存储的访问密钥 ID => 类似于 AWS 的 Access Key ID
     * 可以在 <a href="https://dash.cloudflare.com/profile/api-tokens">获取 API 令牌</a> 页面中获取
     */
    private String accessKeyId;

    /**
     * Cloudflare R2 存储的密钥 => 在 Cloudflare R2 存储中，密钥是不可见的，因此只能在创建时获取一次，之后无法再次获取
     */
    private String secretAccessKey;

    /**
     * 存储桶名称
     */
    private String bucketName;

    /**
     * 存储区域
     */
    private String region;

    /**
     * 存储的终端地址
     */
    private String endpoint;

    /**
     * 连接超时时间（毫秒）
     */
    private Long connectionTimeout;

    /**
     * 读取超时时间（毫秒）
     */
    private Long readTimeout;

    /**
     * 是否使用 HTTPS 连接
     */
    private Boolean useHttps;

    /**
     * 自定义域名
     */
    private String customDomain;
}