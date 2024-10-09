package com.ovo307000.lease.common.configuration;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import io.minio.MinioClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CloudflareConfiguration
{

    /**
     * MinioClient Bean工厂方法
     * <p>
     * 该方法根据 {@link CloudflareProperties}  Bean 创建一个 {@link MinioClient} Bean，用于操作 Minio 存储 Bucket。
     * <p>
     * 该 Bean 的名称为 {@code minioClient}，可以在其他 Spring Bean 中 @Autowired 该 Bean。
     *
     * @param properties Cloudflare R2 存储相关的配置项 Bean
     * @return MinioClient Bean
     */
    @Bean
    public MinioClient minioClient(final CloudflareProperties properties)
    {
        return MinioClient.builder()
                          .endpoint(properties.getEndpoint())
                          .credentials(properties.getAccessKeyId(), properties.getSecretAccessKey())
                          .build();
    }
}