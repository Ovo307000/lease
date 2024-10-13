package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import com.ovo307000.lease.common.utils.FileProcessor;
import com.ovo307000.lease.common.utils.logger.CloudflareOperationLogger;
import io.minio.*;
import io.minio.http.Method;
import jakarta.annotation.Nullable;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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

    @Override
    public CompletableFuture<Optional<String>> getFileUrlAsync(final String bucketName, final String objectName)
    {
        return CompletableFuture.supplyAsync(() -> this.getFileUrl(bucketName, objectName));
    }

    private <R> R execute(@NotNull final SupplierWithException<R> supplier,
                          @NotNull final CloudflareOperationLogger.Operation operation,
                          @NotNull final String objectName,
                          @NotNull final String bucketName)
    {
        try
        {
            CloudflareOperationLogger.logOperationAttempt(operation, objectName, bucketName);
            final R result = supplier.get();
            CloudflareOperationLogger.logOperationSuccess(operation, objectName, bucketName);
            return result;
        }
        catch (final Exception e)
        {
            CloudflareOperationLogger.logOperationFailure(operation, objectName, bucketName, e);
            return null;
        }
    }

    @Override
    public ObjectWriteResponse uploadFile(final String bucketName,
                                          final String objectName,
                                          final String contentType,
                                          final byte[] data)
    {
        if (!this.fileCheck(bucketName, objectName, data))
        {
            return null;
        }

        final String randomName = this.fileProcessor.generateUUIDFileName(objectName);
        return this.execute(() ->
        {
            final PutObjectArgs putObjectArgs = PutObjectArgs.builder()
                                                             .bucket(bucketName)
                                                             .object(randomName)
                                                             .contentType(contentType)
                                                             .stream(new ByteArrayInputStream(data), data.length, -1)

                                                             .build();

            return this.minioClient.putObject(putObjectArgs);
        }, CloudflareOperationLogger.Operation.UPLOAD, objectName, bucketName);
    }

    @Override
    public CompletableFuture<ObjectWriteResponse> uploadFileAsync(final String bucketName,
                                                                  final String objectName,
                                                                  final String contentType,
                                                                  final byte[] data)
    {
        return CompletableFuture.supplyAsync(() -> this.uploadFile(bucketName, objectName, contentType, data));
    }

    @Override
    public @Nullable Map<String, ObjectWriteResponse> uploadFileList(final String bucketName,
                                                                     final List<String> objectNames,
                                                                     final List<byte[]> dataList)
    {
        if (objectNames.size() != dataList.size())
        {
            log.error("文件名列表和数据列表长度不一致");
            return null;
        }

        final Map<String, ObjectWriteResponse> result = new HashMap<>();

        for (final String objectName : objectNames)
        {
            final int    index = objectNames.indexOf(objectName);
            final byte[] data  = dataList.get(index);

            if (this.fileCheck(bucketName, objectName, data))
            {
                final ObjectWriteResponse response = this.uploadFile(bucketName,
                        objectName,
                        "application/octet-stream",
                        data);
                result.put(objectName, response);
            }
        }

        return result;
    }

    @Override
    public void removeFile(final String bucketName, final String objectName)
    {
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
        return this.getObjectInfo(bucketName, objectName) != null;
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

    private boolean fileCheck(final String bucketName, final String objectName, final byte[] bytes)
    {
        if (this.isFileExist(bucketName, objectName))
        {
            log.warn("文件 `{}` 已存在", objectName);
            return false;
        }

        if (this.isBucketExist(bucketName))
        {
            log.warn("存储桶 `{}` 不存在", bucketName);
            return false;
        }

        if (bytes == null || bytes.length == 0)
        {
            log.warn("文件 `{}` 为空", objectName);
            return false;
        }

        if (bytes.length > this.cloudflareProperties.getMaxFileSizeofBytes())
        {
            log.warn("文件 `{}` 大小超过限制", objectName);
            return false;
        }

        return true;
    }

    private boolean isBucketExist(final String bucketName)
    {
        return Boolean.TRUE.equals(this.execute(() ->
        {
            final BucketExistsArgs bucketExistsArgs = BucketExistsArgs.builder()
                                                                      .bucket(bucketName)
                                                                      .build();

            return this.minioClient.bucketExists(bucketExistsArgs);
        }, CloudflareOperationLogger.Operation.FOUNT_BUCKET, "", bucketName));
    }

    @FunctionalInterface
    private interface SupplierWithException<R>
    {
        R get() throws Exception;
    }
}