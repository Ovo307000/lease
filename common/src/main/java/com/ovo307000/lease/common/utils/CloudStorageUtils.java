package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.enumeration.OperationType;
import com.ovo307000.lease.common.properties.CloudflareProperties;
import com.ovo307000.lease.common.properties.MinioProperties;
import com.ovo307000.lease.common.properties.StorageProperties;
import com.ovo307000.lease.common.utils.logger.CloudflareOperationLogger;
import io.minio.BucketExistsArgs;
import io.minio.MinioClient;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

/**
 * 云存储相关工具类
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class CloudStorageUtils
{
    /**
     * 检查文件是否准备就绪以进行上传
     *
     * @param bucketName 存储桶名称
     * @param file 待上传的文件
     * @param client 存储客户端
     * @param properties 存储属性配置
     * @param <T> 客户端类型
     * @param <P> 属性配置类型
     * @return 如果文件准备就绪则返回true，否则返回false
     */
    public static <T, P extends StorageProperties> boolean isFileReadyToUpload(final String bucketName,
                                                                               final MultipartFile file,
                                                                               final T client,
                                                                               final P properties)
    {
        // 当客户端为MinioClient类型时，执行特定的检查逻辑
        if (client instanceof final MinioClient minioClient)
        {
            // 检查存储桶是否存在
            if (!isBucketExists(minioClient, bucketName))
            {
                log.error("存储桶 `{}` 不存在", bucketName);
                return false;
            }

            // 检查文件是否为空
            if (file.isEmpty())
            {
                log.error("文件为空");
                return false;
            }

            // 检查文件大小是否符合要求
            return isFileSizeValid(file, properties);
        }

        // 如果客户端不是MinioClient类型，直接返回true，表示文件准备就绪
        return true;
    }

    /**
     * 检查指定的存储桶是否存在
     *
     * @param client Minio客户端
     * @param bucketName 存储桶名称
     * @return 如果存储桶存在则返回true，否则返回false
     */
    private static boolean isBucketExists(final MinioClient client, final String bucketName)
    {
        final BucketExistsArgs existsArgs = BucketExistsArgs.builder()
                                                            .bucket(bucketName)
                                                            .build();

        // 使用CloudflareOperationLogger记录操作日志，并执行检查存储桶存在的操作
        return Boolean.TRUE.equals(CloudflareOperationLogger.execute(() -> client.bucketExists(existsArgs),
                OperationType.CHECK_BUCKET_EXISTENCE,
                bucketName,
                bucketName));
    }

    /**
     * 检查文件大小是否符合属性配置的要求
     *
     * @param file 待检查的文件
     * @param properties 存储属性配置
     * @param <T> 属性配置类型
     * @return 如果文件大小符合要求则返回true，否则返回false
     */
    private static <T extends StorageProperties> boolean isFileSizeValid(final MultipartFile file, final T properties)
    {
        // 检查文件大小是否超过最大允许值
        if (properties.getMaxFileSizeOfBytes() < file.getSize())
        {
            log.error("文件大小超过 {} 字节", properties.getMaxFileSizeOfBytes());
            return false;
        }

        return true;
    }
}
