package com.ovo307000.lease.common.utils;

import com.ovo307000.lease.common.enumeration.OperationType;
import com.ovo307000.lease.common.properties.StorageProperties;
import com.ovo307000.lease.common.utils.logger.CloudflareOperationLogger;
import io.minio.BucketExistsArgs;
import io.minio.GetPresignedObjectUrlArgs;
import io.minio.MinioClient;
import io.minio.ObjectWriteResponse;
import io.minio.http.Method;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

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
     * @param file       待上传的文件
     * @param client     存储客户端
     * @param properties 存储属性配置
     * @param <T>        客户端类型
     * @param <P>        属性配置类型
     * @return 如果文件准备就绪则返回true，否则返回false
     * @throws IllegalArgumentException 如果存储桶名称为空
     */
    public static <T, P extends StorageProperties> boolean isFileReadyToUpload(final MultipartFile file,
                                                                               final T client,
                                                                               final P properties)
    {
        final String bucketName = Optional.ofNullable(properties.getBucketName())
                                          .orElseThrow(IllegalArgumentException::new);

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
     * @param client     Minio客户端
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
     * @param file       待检查的文件
     * @param properties 存储属性配置
     * @param <T>        属性配置类型
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

    /**
     * 获取对象的URL
     * <p>
     * 此方法通过给定的MinioClient和ObjectWriteResponse对象来获取一个预签名的对象URL
     * 它首先构建一个GetPresignedObjectUrlArgs对象，然后使用CloudflareOperationLogger中的方法来执行获取URL的操作
     * 最后，将获取到的URL作为日志信息输出，并返回该URL
     *
     * @param client   MinioClient实例，用于与Minio服务器交互
     * @param response ObjectWriteResponse对象，包含桶名和对象名等信息
     * @return 返回获取到的对象URL字符串
     */
    public static String getObjectUrl(final MinioClient client, final ObjectWriteResponse response)
    {
        // 构建获取预签名对象URL的参数
        final GetPresignedObjectUrlArgs objectUrlArgs = GetPresignedObjectUrlArgs.builder()
                                                                                 .bucket(response.bucket())
                                                                                 .object(response.object())
                                                                                 .method(Method.GET)
                                                                                 .build();

        // 使用CloudflareOperationLogger记录操作日志，并执行获取对象URL的操作
        return CloudflareOperationLogger.execute(() -> client.getPresignedObjectUrl(objectUrlArgs),
                OperationType.GET_OBJECT_URL,
                response.object(),
                response.bucket());
    }
}
