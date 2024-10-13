package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import com.ovo307000.lease.common.utils.FileProcessor;
import com.ovo307000.lease.common.utils.logger.CloudflareOperationLogger;
import io.minio.*;
import io.minio.http.Method;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;
import java.util.*;
import java.util.concurrent.CompletableFuture;

/**
 * CloudflareServiceStrategy 是一个实现了 StorageServiceStrategy 接口的服务类，
 * 负责与 Cloudflare R2 存储服务进行交互。
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class CloudflareServiceStrategy implements StorageServiceStrategy
{
    private final MinioClient          minioClient;
    private final FileProcessor        fileProcessor;
    private final CloudflareProperties cloudflareProperties;

    /**
     * 异步获取文件 URL。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @return 包含文件 URL 的 CompletableFuture 对象
     */
    @Override
    public CompletableFuture<Optional<String>> getFileUrlAsync(final String bucketName, final String objectName)
    {
        return CompletableFuture.supplyAsync(() -> this.getFileUrl(bucketName, objectName));
    }

    /**
     * 上传字节数组形式的文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @param bytes      文件字节数组
     * @return 上传结果的 ObjectWriteResponse 对象
     */
    @Override
    public ObjectWriteResponse putObject(final String bucketName, final String objectName, @NotNull final byte[] bytes)
    {
        // 生成带有 UUID 的文件名
        final String uuidObjectName = this.fileProcessor.generateUUIDFileName(objectName);

        // 执行上传操作
        return this.execute(() -> this.minioClient.putObject(PutObjectArgs.builder()
                                                                          .bucket(bucketName)
                                                                          .object(uuidObjectName)
                                                                          .stream(new ByteArrayInputStream(bytes),
                                                                                  bytes.length,
                                                                                  -1)
                                                                          .build()),
                CloudflareOperationLogger.Operation.PUT,
                objectName,
                bucketName);
    }

    /**
     * 上传 MultipartFile 文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @param file       MultipartFile 文件
     * @return 上传结果的 ObjectWriteResponse 对象
     */
    @Override
    public ObjectWriteResponse putObject(final String bucketName, final String objectName, final MultipartFile file)
    {
        // 检查文件是否为空
        if (file.isEmpty())
        {
            log.warn("文件 `{}` 为空，无法上传", objectName);
            throw new IllegalArgumentException("文件为空");
        }

        // 检查文件大小是否超过最大限制
        if (file.getSize() > this.cloudflareProperties.getMaxFileSizeofBytes())
        {
            log.warn("文件 `{}` 大小超过 {} 字节，无法上传", objectName, this.cloudflareProperties.getMaxFileSizeofBytes());
            throw new IllegalArgumentException("文件大小超过限制");
        }

        // 如果文件大小超过大文件阈值，使用分片上传
        if (file.getSize() >= this.cloudflareProperties.getBigFileSizeofBytes())
        {
            return this.execute(() -> this.minioClient.putObject(PutObjectArgs.builder()
                                                                              .bucket(bucketName)
                                                                              .object(objectName)
                                                                              .stream(file.getInputStream(),
                                                                                      file.getSize(),
                                                                                      -1)
                                                                              .build()),
                    CloudflareOperationLogger.Operation.PUT,
                    objectName,
                    bucketName);
        }

        // 否则，直接上传文件字节数组
        return this.putObject(bucketName, objectName, this.fileProcessor.getBytesFromFile(file));
    }

    /**
     * 异步上传字节数组形式的文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @param bytes      文件字节数组
     * @return 包含上传结果的 CompletableFuture 对象
     */
    @Override
    public CompletableFuture<ObjectWriteResponse> putObjectAsync(final String bucketName,
                                                                 final String objectName,
                                                                 @NotNull final byte[] bytes)
    {
        return CompletableFuture.supplyAsync(() -> this.putObject(bucketName, objectName, bytes));
    }

    /**
     * 异步上传文件列表。
     *
     * @param bucketName 存储桶名称
     * @param files      文件列表
     * @return 包含上传结果的 Map 对象
     */
    @Override
    public Map<String, CompletableFuture<ObjectWriteResponse>> putObjectListAsync(final String bucketName,
                                                                                  final List<MultipartFile> files)
    {
        final Map<String, CompletableFuture<ObjectWriteResponse>> result = new HashMap<>();

        for (final MultipartFile file : files)
        {
            final String objectName = file.getOriginalFilename();
            final byte[] bytes      = this.fileProcessor.getBytesFromFile(file);

            if (bytes == null)
            {
                log.warn("无法从文件 `{}` 中读取字节数组", objectName);
                continue;
            }

            result.put(objectName, this.putObjectAsync(bucketName, objectName, bytes));
        }

        return result;
    }

    /**
     * 删除文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     */
    @Override
    public void removeFile(final String bucketName, final String objectName)
    {
        RemoveObjectArgs.builder()
                        .bucket(bucketName)
                        .object(objectName)
                        .build();

        this.execute(() ->
        {
            this.minioClient.removeObject(RemoveObjectArgs.builder()
                                                          .bucket(bucketName)
                                                          .object(objectName)
                                                          .build());
            return null;
        }, CloudflareOperationLogger.Operation.DELETE, objectName, bucketName);
    }

    /**
     * 异步删除文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     */
    @Override
    public void removeFileAsync(final String bucketName, final String objectName)
    {
        CompletableFuture.runAsync(() -> this.removeFile(bucketName, objectName));
    }

    /**
     * 异步删除文件列表。
     *
     * @param bucketName 存储桶名称
     * @param objectNames 文件名称列表
     */
    @Override
    public void removeFileListAsync(final String bucketName, final List<String> objectNames)
    {
        objectNames.forEach(objectName -> this.removeFileAsync(bucketName, objectName));
    }

    /**
     * 检查文件是否存在。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @return 如果文件存在则返回 true，否则返回 false
     */
    @Override
    public boolean isFileExist(final String bucketName, final String objectName)
    {
        if (this.getObjectInfo(bucketName, objectName) == null)
        {
            log.warn("文件 `{}` 不存在于存储桶 `{}` 中", objectName, bucketName);
            return false;
        }

        return true;
    }

    /**
     * 获取文件信息。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @return 文件信息的 StatObjectResponse 对象
     */
    @Override
    public StatObjectResponse getObjectInfo(final String bucketName, final String objectName)
    {
        final StatObjectArgs statObjectArgs = StatObjectArgs.builder()
                                                            .bucket(bucketName)
                                                            .object(objectName)
                                                            .build();

        return this.execute(() -> this.minioClient.statObject(statObjectArgs),
                CloudflareOperationLogger.Operation.GET,
                objectName,
                bucketName);
    }

    /**
     * 获取文件 URL。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @return 包含文件 URL 的 Optional 对象
     */
    @Override
    public Optional<String> getFileUrl(final String bucketName, final String objectName)
    {
        return this.execute(() ->
        {
            final GetPresignedObjectUrlArgs getPresignedObjectUrlArgs = GetPresignedObjectUrlArgs.builder()
                                                                                                 .method(Method.GET)
                                                                                                 .bucket(bucketName)
                                                                                                 .object(objectName)
                                                                                                 .build();

            return Optional.of(this.minioClient.getPresignedObjectUrl(getPresignedObjectUrlArgs));
        }, CloudflareOperationLogger.Operation.GET, objectName, bucketName);
    }

    /**
     * 创建存储桶。
     *
     * @param bucketName 存储桶名称
     */
    @Override
    public void createBucket(final String bucketName)
    {
        final MakeBucketArgs makeBucketArgs = MakeBucketArgs.builder()
                                                            .bucket(bucketName)
                                                            .build();

        this.execute(() ->
        {
            this.minioClient.makeBucket(makeBucketArgs);
            return null;
        }, CloudflareOperationLogger.Operation.CREATE, "", bucketName);
    }

    /**
     * 获取文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @return 文件的 GetObjectResponse 对象
     */
    @Override
    public GetObjectResponse getObject(final String bucketName, final String objectName)
    {
        final GetObjectArgs getObjectArgs = GetObjectArgs.builder()
                                                         .bucket(bucketName)
                                                         .object(objectName)
                                                         .build();

        return this.execute(() -> this.minioClient.getObject(getObjectArgs),
                CloudflareOperationLogger.Operation.GET,
                objectName,
                bucketName);
    }

    /**
     * 异步获取文件。
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     * @return 包含文件的 CompletableFuture 对象
     */
    @Override
    public CompletableFuture<GetObjectResponse> getObjectAsync(final String bucketName, final String objectName)
    {
        return CompletableFuture.supplyAsync(() -> this.getObject(bucketName, objectName));
    }

    /**
     * 异步获取文件列表。
     *
     * @param bucketName 存储桶名称
     * @param objectNames 文件名称列表
     * @return 包含文件的 CompletableFuture 对象列表
     */
    @Override
    public List<CompletableFuture<GetObjectResponse>> getObjectListAsync(final String bucketName,
                                                                         final List<String> objectNames)
    {
        final List<CompletableFuture<GetObjectResponse>> result = new ArrayList<>();

        for (final String objectName : objectNames)
        {
            result.add(this.getObjectAsync(bucketName, objectName));
        }

        return result;
    }

    /**
     * 删除对象。
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    @Override
    public void removeObject(final String bucketName, final String objectName)
    {
        RemoveObjectArgs.builder()
                        .bucket(bucketName)
                        .object(objectName)
                        .build();

        this.execute(() ->
        {
            this.minioClient.removeObject(RemoveObjectArgs.builder()
                                                          .bucket(bucketName)
                                                          .object(objectName)
                                                          .build());
            return null;
        }, CloudflareOperationLogger.Operation.DELETE, objectName, bucketName);
    }

    /**
     * 异步删除对象。
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    @Override
    public void removeObjectAsync(final String bucketName, final String objectName)
    {
        CompletableFuture.runAsync(() -> this.removeObject(bucketName, objectName));
    }

    /**
     * 异步删除对象列表。
     *
     * @param bucketName 存储桶名称
     * @param objectNames 对象名称列表
     */
    @Override
    public void removeObjectListAsync(final String bucketName, final List<String> objectNames)
    {
        objectNames.forEach(objectName -> this.removeObjectAsync(bucketName, objectName));
    }

    /**
     * 执行一个供应商函数，并针对操作结果进行日志记录。
     * 该方法泛型化，可以处理任何类型的返回值，但务必小心泛型类型的擦除。
     * <p>
     * 此方法首先记录操作的尝试，然后尝试执行供应商函数。
     * 如果执行成功，它记录操作成功日志并返回结果。
     * 如果执行过程中发生异常，它记录操作失败日志并返回 null。
     * 采用 {@link SupplierWithException} 函数式接口，以便供应商函数可以抛出异常。
     * 日志记录使用 {@link CloudflareOperationLogger} 类。
     *
     * @param supplier   执行的供应商函数，可能抛出异常
     * @param operation  云操作日志记录的操作类型
     * @param objectName 操作对象的名称
     * @param bucketName 桶的名称，可能与操作对象相关
     * @param <R>        供应商函数的返回类型
     * @return 返回供应商函数的结果，如果发生异常则返回 null
     */
    private <R> R execute(@NotNull final SupplierWithException<R> supplier,
                          @NotNull final CloudflareOperationLogger.Operation operation,
                          @NotNull final String objectName,
                          @NotNull final String bucketName)
    {
        try
        {
            // 记录操作尝试日志
            CloudflareOperationLogger.logOperationAttempt(operation, objectName, bucketName);

            // 执行供应商函数并获取结果
            final R result = supplier.get();

            // 记录操作成功日志
            CloudflareOperationLogger.logOperationSuccess(operation, objectName, bucketName);

            // 返回结果
            return result;
        }
        catch (final Exception e)
        {
            // 记录操作失败日志
            CloudflareOperationLogger.logOperationFailure(operation, objectName, bucketName, e);

            // 返回 null
            return null;
        }
    }

    /**
     * SupplierWithException 是一个函数式接口，允许供应商函数抛出异常。
     *
     * @param <R> 供应商函数的返回类型
     */
    @FunctionalInterface
    private interface SupplierWithException<R>
    {
        R get() throws Exception;
    }
}