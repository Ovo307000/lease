package com.ovo307000.lease.common.configuration;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import io.minio.MinioClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CloudflareConfiguration
{
    @Bean
    public MinioClient cloudflareClient(final CloudflareProperties properties)
    {
        return MinioClient.builder()
                          .endpoint(properties.getEndpoint())
                          .credentials(properties.getAccessKeyId(), properties.getSecretAccessKey())
                          .region("auto")   // 自动选择区域 <对 Cloudflare R2 存储有效>
                          .build();
    }
}