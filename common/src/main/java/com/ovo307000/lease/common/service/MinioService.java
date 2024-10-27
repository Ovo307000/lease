package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.enumeration.OperationType;
import com.ovo307000.lease.common.properties.storage.StorageProperties;
import com.ovo307000.lease.common.utils.CloudStorageUtils;
import com.ovo307000.lease.common.utils.FileProcessor;
import com.ovo307000.lease.common.utils.logger.CloudflareOperationLogger;
import io.minio.BucketExistsArgs;
import io.minio.MinioClient;
import io.minio.ObjectWriteResponse;
import io.minio.PutObjectArgs;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;

/**
 * Minio服务实现类，用于处理与Minio存储相关的操作.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class MinioService implements StorageService
{
    private final FileProcessor fileProcessor;

    /**
     * 检查指定的存储桶是否存在于Minio服务器.
     *
     * @param client     Minio客户端
     * @param properties 存储属性配置
     * @return 如果存储桶存在返回true，否则返回false
     */
    @Override
    public boolean isBucketExists(final MinioClient client, final StorageProperties properties)
    {
        final String bucketName = getBucketNameFromProperties(properties);

        final BucketExistsArgs existsArgs = BucketExistsArgs.builder()
                                                            .bucket(bucketName)
                                                            .build();

        return Boolean.TRUE.equals(CloudflareOperationLogger.execute(() -> client.bucketExists(existsArgs),
                OperationType.CHECK_BUCKET_EXISTENCE,
                bucketName,
                bucketName));
    }

    /**
     * 上传单个对象（文件）到Minio存储桶.
     *
     * @param file       要上传的文件
     * @param client     Minio客户端
     * @param properties 存储属性配置
     * @return 返回上传对象的响应信息
     * @throws IllegalArgumentException 如果文件未准备就绪或存储桶名称为空
     */
    @Override
    public ObjectWriteResponse uploadObject(final MultipartFile file,
                                            final MinioClient client,
                                            final StorageProperties properties)
    {
        final String bucketName = getBucketNameFromProperties(properties);

        // 检查文件是否准备就绪以进行上传
        if (!CloudStorageUtils.isFileReadyToUpload(file, client, properties))
        {
            throw new IllegalArgumentException("文件未准备就绪");
        }

        // 生成文件名
        final String fileName = this.fileProcessor.generateRandomNameFromMultipartFile(file);
        log.info("文件名: {} => {}", file.getOriginalFilename(), fileName);

        // 上传文件
        return CloudflareOperationLogger.execute(() -> client.putObject(PutObjectArgs.builder()
                                                                                     .bucket(bucketName)
                                                                                     .object(fileName)
                                                                                     .contentType(file.getContentType())
                                                                                     .stream(file.getInputStream(),
                                                                                             file.getSize(),
                                                                                             -1)
                                                                                     .contentType(file.getContentType())
                                                                                     .build()),
                OperationType.UPLOAD_OBJECT,
                fileName,
                bucketName);
    }

    /**
     * 批量上传对象（文件）到Minio存储桶.
     *
     * @param fileList   要上传的文件列表
     * @param client     Minio客户端
     * @param properties 存储属性配置
     * @return 返回上传对象的响应信息列表
     */
    @Override
    public List<ObjectWriteResponse> uploadObjectList(final List<MultipartFile> fileList,
                                                      final MinioClient client,
                                                      final StorageProperties properties)
    {
        return fileList.stream()
                       .map(file -> CompletableFuture.supplyAsync(() -> this.uploadObject(file, client, properties)))
                       .map(CompletableFuture::join)
                       .toList();
    }

    /**
     * 从存储属性配置中获取存储桶名称.
     *
     * @param properties 存储属性配置
     * @return 返回存储桶名称
     * @throws IllegalArgumentException 如果存储桶名称为空
     */
    private static String getBucketNameFromProperties(final StorageProperties properties)
    {
        return Optional.ofNullable(properties.getBucketName())
                       .orElseThrow(() -> new IllegalArgumentException("存储桶名称为空"));
    }
}
