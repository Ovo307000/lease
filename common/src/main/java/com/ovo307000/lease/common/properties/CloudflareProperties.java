package com.ovo307000.lease.common.properties;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.Collection;

/**
 * Cloudflare R2 存储相关的配置项
 * <p>
 * 该类用于配置和管理 Cloudflare R2 存储相关的配置项
 * 通过 {@link ConfigurationProperties} 注解，Spring Boot 可以自动将配置文件中的属性加载到该类中
 */
@Getter
@Setter
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "storage.cloudflare.r2")
public class CloudflareProperties extends StorageProperties
{
    private String accountId;
}