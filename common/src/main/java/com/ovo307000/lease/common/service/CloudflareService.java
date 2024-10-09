package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.utils.FileProcessor;
import com.ovo307000.lease.common.utils.logger.CloudflareOperationLogger;
import io.minio.MinioClient;
import io.minio.ObjectWriteResponse;
import io.minio.PutObjectArgs;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
@RequiredArgsConstructor
public class CloudflareService implements StorageService
{
    private final MinioClient   minioClient;
    private final FileProcessor fileProcessor;

    @FunctionalInterface
    private interface SupplierWithException<T>
    {
        T get() throws Exception;
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
     * @param <T>        供应商函数的返回类型
     * @return 返回供应商函数的结果，如果发生异常则返回null
     */
    private <T> T execute(@NotNull final SupplierWithException<T> supplier,
                          @NotNull final CloudflareOperationLogger.Operation operation,
                          @NotNull final String objectName,
                          @NotNull final String bucketName)
    {
        try
        {
            // 记录操作尝试日志
            CloudflareOperationLogger.logOperationAttempt(operation, objectName, bucketName);

            // 执行供应商函数并获取结果
            final T result = supplier.get();

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
}
