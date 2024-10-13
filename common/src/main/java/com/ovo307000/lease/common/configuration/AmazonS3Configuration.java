package com.ovo307000.lease.common.configuration;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.S3Configuration;

import java.net.URI;

/**
 * 配置类，用于创建和配置Amazon S3客户端
 */
@Configuration
public class AmazonS3Configuration
{
    /**
     * 配置并返回一个Amazon S3客户端实例
     * 该方法使用Cloudflare属性来创建一个自定义配置的S3客户端，禁用了校验和验证并设置了静态凭证提供者
     *
     * @param properties Cloudflare配置属性，包含访问S3服务所需的凭证和端点信息
     * @return 返回一个配置好的Amazon S3客户端实例
     */
    @Bean
    public S3Client amazonS3Client(final CloudflareProperties properties)
    {
        // 构建并返回S3客户端，使用指定的端点、凭证提供者和服务配置
        // 端点是从Cloudflare属性中获取的，用于指定S3服务的访问地址
        return S3Client.builder()
                       .endpointOverride(URI.create(properties.getEndpoint()))
                       .credentialsProvider(this.createStaticCredentialsProvider(properties))
                       .serviceConfiguration(this.createS3Configuration())
                       .build();
    }

    /**
     * 创建并返回一个静态凭证提供者
     * 该方法根据Cloudflare属性中的访问密钥和秘密密钥创建凭证，并包装成静态凭证提供者
     *
     * @param properties Cloudflare配置属性，包含访问S3服务的凭证信息
     * @return 返回一个静态凭证提供者实例
     */
    private StaticCredentialsProvider createStaticCredentialsProvider(final CloudflareProperties properties)
    {
        // 根据提供的访问密钥和秘密密钥创建AwsBasicCredentials对象
        final AwsBasicCredentials basicCredentials;
        basicCredentials = AwsBasicCredentials.create(properties.getAccessKeyId(), properties.getSecretAccessKey());

        // 将凭证包装成静态凭证提供者并返回
        return StaticCredentialsProvider.create(basicCredentials);
    }

    /**
     * 创建并返回S3服务配置
     * 该方法配置S3客户端禁用校验和验证
     *
     * @return 返回S3服务配置实例
     */
    private S3Configuration createS3Configuration()
    {
        // 构建并返回S3配置对象，其中禁用了校验和验证
        return S3Configuration.builder()
                              .checksumValidationEnabled(false)
                              .build();
    }
}
