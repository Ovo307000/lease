package com.ovo307000.lease.common.configuration;

import com.ovo307000.lease.common.properties.storage.MinioProperties;
import io.minio.MinioClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

/**
 * Minio配置类，用于创建MinioClient实例并注入到Spring上下文中
 */
@Component
public class MinioConfiguration
{
    /**
     * 创建并配置MinioClient实例
     *
     * @param properties Minio配置属性，包含访问密钥、秘密密钥和端点
     * @return 配置好的MinioClient实例
     */
    @Bean
    @Lazy
    public MinioClient minioClient(final MinioProperties properties)
    {
        // 确保访问密钥不为空
        Assert.notNull(properties.getAccessKeyId(), "Minio access key must not be null");
        // 确保秘密密钥不为空
        Assert.notNull(properties.getSecretAccessKey(), "Minio secret key must not be null");
        // 确保端点不为空
        Assert.notNull(properties.getEndpoint(), "Minio endpoint must not be null");

        // 构建并返回MinioClient实例
        return MinioClient.builder()
                          .endpoint(properties.getEndpoint())
                          .credentials(properties.getAccessKeyId(), properties.getSecretAccessKey())
                          .build();
    }
}
