package com.ovo307000.lease.common.configuration;

import com.ovo307000.lease.common.properties.storage.CloudflareProperties;
import io.minio.MinioClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;

@Configuration
public class CloudflareConfiguration
{
    @Bean
    @Lazy
    public MinioClient cloudflareClient(final CloudflareProperties properties)
    {
        return MinioClient.builder()
                          .endpoint(properties.getEndpoint())
                          .credentials(properties.getAccessKeyId(), properties.getSecretAccessKey())
                          .region("auto")
                          .build();
    }
}