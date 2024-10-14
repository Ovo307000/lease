package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import io.minio.BucketExistsArgs;
import io.minio.MinioClient;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import software.amazon.awssdk.services.s3.S3Client;

@Slf4j
@Component
@RequiredArgsConstructor
public class CloudStorageUtils
{
    private final CloudflareProperties cloudflareProperties;

    /**
     * 检查文件是否准备好上传
     * <p>
     * 此方法用于检查文件上传前是否满足所有必要的条件，包括参数完整性、文件大小、文件类型等
     * 它还根据客户端类型（如S3Client或MinioClient）检查桶的存在性
     *
     * @param bucketName 存储桶名称
     * @param file       Spring框架中的MultipartFile对象，表示上传的文件
     * @param client     客户端对象，可以是S3Client或MinioClient
     * @return 如果文件准备就绪且存储桶存在，则返回true；否则返回false
     */
    public <T> boolean isFileReadyToUpload(final String bucketName, final MultipartFile file, final T client)
    {
        // 检查上传参数是否完整
        if (bucketName == null || bucketName.isEmpty() || file == null || file.isEmpty())
        {
            log.error("文件上传参数不完整 bucketName: {}, file: {}", bucketName, file);

            return false;
        }

        // 检查文件大小是否为0
        if (file.getSize() <= 0)
        {
            log.error("文件大小为0，无法上传");

            return false;
        }

        // 检查文件名是否为空
        if (file.getOriginalFilename() == null ||
            file.getOriginalFilename()
                .isEmpty())
        {
            log.error("文件名为空，无法上传");

            return false;
        }

        // 检查文件类型是否为空
        if (file.getContentType() == null ||
            file.getContentType()
                .isEmpty())
        {
            log.error("文件类型为空，无法上传");

            return false;
        }

        // 检查文件大小是否超过允许的最大值
        if (file.getSize() > this.cloudflareProperties.getMaxFileSizeofBytes())
        {
            log.error("文件大小超过 {} 字节，无法上传", this.cloudflareProperties.getMaxFileSizeofBytes());

            return false;
        }

        // 根据客户端类型检查存储桶是否存在
        if (client instanceof final S3Client s3Client)
        {
            // 对于S3Client，检查是否存在指定名称的存储桶
            return s3Client.listBuckets()
                           .buckets()
                           .stream()
                           .anyMatch(bucket -> bucket.name()
                                                     .equals(bucketName));
        }
        else if (client instanceof final MinioClient minioClient)
        {
            // 对于MinioClient，使用API方法检查存储桶是否存在
            try
            {
                return minioClient.bucketExists(BucketExistsArgs.builder()
                                                                .bucket(bucketName)
                                                                .build());
            }
            catch (final Exception e)
            {
                log.error("检查存储桶是否存在时发生异常: {}", e.getMessage());

                return false;
            }
        }
        else
        {
            // 未知的客户端类型 - 无法检查存储桶是否存在
            log.error("未知的客户端类型: {}",
                    client.getClass()
                          .getName());

            return false;
        }
    }
}
