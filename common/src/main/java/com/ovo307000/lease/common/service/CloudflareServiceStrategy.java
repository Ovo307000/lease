package com.ovo307000.lease.common.service;

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

@Slf4j
@Service
@RequiredArgsConstructor
public class CloudflareServiceStrategy implements StorageServiceStrategy
{
    private final MinioClient   minioClient;
    private final FileProcessor fileProcessor;

    @Override
    public CompletableFuture<Optional<String>> getFileUrlAsync(final String bucketName, final String objectName)
    {
        return CompletableFuture.supplyAsync(() -> this.getFileUrl(bucketName, objectName));
    }

    @Override
    public ObjectWriteResponse putObject(final String bucketName, final String objectName, @NotNull final byte[] bytes)
    {
        final String uuidObjectName = this.fileProcessor.generateUUIDFileName(objectName);

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

    @Override
    public ObjectWriteResponse putObject(final String bucketName, final String objectName, final MultipartFile file)
    {
        return this.putObject(bucketName, objectName, this.fileProcessor.getBytesFromFile(file));
    }

    @Override
    public CompletableFuture<ObjectWriteResponse> putObjectAsync(final String bucketName,
                                                                 final String objectName,
                                                                 @NotNull final byte[] bytes)
    {
        return CompletableFuture.supplyAsync(() -> this.putObject(bucketName, objectName, bytes));
    }

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

    @Override
    public void removeFileAsync(final String bucketName, final String objectName)
    {
        CompletableFuture.runAsync(() -> this.removeFile(bucketName, objectName));
    }

    @Override
    public void removeFileListAsync(final String bucketName, final List<String> objectNames)
    {
        objectNames.forEach(objectName -> this.removeFileAsync(bucketName, objectName));
    }

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
     * Gets the URL of a file in Cloudflare R2.
     * <p>
     * This method returns an {@link Optional} containing the URL of the file, or an empty {@link Optional} if the file
     * does not exist.
     *
     * @param bucketName the name of the bucket that the file is located in
     * @param objectName the name of the file
     * @return an {@link Optional} containing the URL of the file, or an empty {@link Optional} if the file does not exist
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

    @Override
    public CompletableFuture<GetObjectResponse> getObjectAsync(final String bucketName, final String objectName)
    {
        return CompletableFuture.supplyAsync(() -> this.getObject(bucketName, objectName));
    }

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

    @Override
    public void removeObjectAsync(final String bucketName, final String objectName)
    {
        CompletableFuture.runAsync(() -> this.removeObject(bucketName, objectName));
    }

    @Override
    public void removeObjectListAsync(final String bucketName, final List<String> objectNames)
    {
        objectNames.forEach(objectName -> this.removeObjectAsync(bucketName, objectName));
    }

    /**
     * 执行一个供应商函数，并针对操作结果进行日志记录
     * 该方法泛型化，可以处理任何类型的返回值，但务必小心泛型类型的擦除
     * <p>
     * 此方法首先记录操作的尝试，然后尝试执行供应商函数
     * 如果执行成功，它记录操作成功日志并返回结果
     * 如果执行过程中发生异常，它记录操作失败日志并返回null
     * 采用 {@link SupplierWithException} 函数式接口，以便供应商函数可以抛出异常
     * 日志记录使用 {@link CloudflareOperationLogger} 类
     *
     * @param supplier   执行的供应商函数，可能抛出异常
     * @param operation  云操作日志记录的操作类型
     * @param objectName 操作对象的名称
     * @param bucketName 桶的名称，可能与操作对象相关
     * @param <R>        供应商函数的返回类型
     * @return 返回供应商函数的结果，如果发生异常则返回null
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

            // 返回null
            return null;
        }
    }

    @FunctionalInterface
    private interface SupplierWithException<R>
    {
        R get() throws Exception;
    }
}
