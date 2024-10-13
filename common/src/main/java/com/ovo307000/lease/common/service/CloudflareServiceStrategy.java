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
import org.springframework.web.multipart.MultipartFile;

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
    private final CloudflareProperties cloudflareProperties;
    private final FileProcessor        fileProcessor;

    /**
     * 异步获取文件URL
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 返回一个CompletableFuture，其中包含可选的文件URL字符串
     */
    @Override
    public CompletableFuture<Optional<String>> getFileUrlAsync(final String bucketName, final String objectName)
    {
        // 使用CompletableFuture的supplyAsync方法来异步执行getFileUrl方法
        // 这是为了避免在同步方法中阻塞当前线程
        return CompletableFuture.supplyAsync(() -> this.getFileUrl(bucketName, objectName));
    }

    /**
     * 执行一个带有异常处理的供应商操作，并记录操作日志
     * 此方法用于在一个统一的异常处理和日志记录策略下执行某种操作
     * 它接收一个供应商函数，该函数可能抛出异常，并通过三个参数提供操作上下文信息
     *
     * @param supplier   一个可能抛出异常的供应商函数，用于执行具体操作
     * @param operation  操作类型，用于日志记录中标识操作种类
     * @param objectName 操作对象名称，用于日志记录中标识操作目标
     * @param bucketName 桶名称，用于日志记录中进一步描述操作环境
     * @param <R>        返回值类型
     * @return 返回操作结果，如果操作失败则返回null
     */
    private <R> R execute(@NotNull final SupplierWithException<R> supplier,
                          @NotNull final CloudflareOperationLogger.Operation operation,
                          @NotNull final String objectName,
                          @NotNull final String bucketName)
    {
        try
        {
            // 记录操作尝试开始
            CloudflareOperationLogger.logOperationAttempt(operation, objectName, bucketName);

            // 执行供应商函数提供的操作，并返回结果
            final R result = supplier.get();

            // 记录操作成功完成
            CloudflareOperationLogger.logOperationSuccess(operation, objectName, bucketName);

            return result;
        }
        catch (final Exception e)
        {
            // 记录操作失败信息和异常详情
            CloudflareOperationLogger.logOperationFailure(operation, objectName, bucketName, e);

            return null;
        }
    }

    /**
     * 上传文件到云存储
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param file       文件
     * @return 返回文件上传响应，如果上传失败则返回null
     */
    @Override
    public ObjectWriteResponse uploadFile(final String bucketName, final String objectName, final MultipartFile file)
    {
        // 检查文件上传前的合法性
        if (!this.isFileReadyToUpload(bucketName, objectName, file))
        {
            return null;
        }

        // 生成一个随机的文件名，用于重命名上传的文件
        final String randomName = this.fileProcessor.generateRandomFileName(objectName);
        // 执行文件上传操作
        return this.execute(() ->
        {
            // 构建上传对象的参数
            final PutObjectArgs putObjectArgs = PutObjectArgs.builder()
                                                             .bucket(bucketName)
                                                             .object(randomName)
                                                             .contentType(file.getContentType())
                                                             .stream(file.getInputStream(), file.getSize(), -1)
                                                             .build();

            // 使用MinIO客户端进行文件上传
            return this.minioClient.putObject(putObjectArgs);
        }, CloudflareOperationLogger.Operation.UPLOAD, objectName, bucketName);
    }

    /**
     * 异步上传文件到指定的存储桶中
     *
     * @param bucketName  存储桶名称，用于标识存储文件的位置
     * @param objectName  文件对象名称，即文件在存储桶中的唯一标识
     * @param contentType 文件的MIME类型，用于描述文件的格式和编码
     * @param file        待上传的文件，由前端请求传递
     * @return 返回一个CompletableFuture对象，它将异步处理结果，包括文件上传响应
     */
    @Override
    public CompletableFuture<ObjectWriteResponse> uploadFileAsync(final String bucketName,
                                                                  final String objectName,
                                                                  final String contentType,
                                                                  final MultipartFile file)
    {
        // 使用CompletableFuture进行异步处理，调用同步上传文件方法并返回结果
        return CompletableFuture.supplyAsync(() -> this.uploadFile(bucketName, objectName, file));
    }

    /**
     * 检查文件是否可以上传
     * <p>
     * 此方法用于在上传文件之前执行一系列检查，以确保文件不会覆盖现有文件，
     * 存储桶存在，文件内容不为空，且文件大小未超过允许的限制
     *
     * @param bucketName 存储桶名称，用于标识存储位置
     * @param objectName 对象（文件）名称，用于唯一标识文件
     * @param file       待上传的文件
     * @return 如果所有检查都通过，则返回true；否则返回false，并记录相应的警告信息
     */
    private boolean isFileReadyToUpload(final String bucketName, final String objectName, final MultipartFile file)
    {
        // 检查文件是否已存在，避免覆盖
        if (this.isFileExist(bucketName, objectName))
        {
            log.warn("文件 `{}` 已存在", objectName);
            return false;
        }

        // 检查存储桶是否存在，确保有有效的存储位置
        if (this.isBucketExist(bucketName))
        {
            log.warn("存储桶 `{}` 不存在", bucketName);
            return false;
        }

        // 检查文件内容是否为空，避免上传空文件
        try
        {
            final byte[] fileBytes = file.getBytes();

            // 检查文件内容是否为空
            if (file.getBytes().length == 0)
            {
                log.warn("文件 `{}` 为空", objectName);
                return false;
            }

            // 检查文件大小是否超过允许的最大值，维护文件上传的尺寸限制
            if (fileBytes.length > this.cloudflareProperties.getMaxFileSizeofBytes())
            {
                log.warn("文件 `{}` 大小超过限制", objectName);
                return false;
            }
        }
        catch (final Exception e)
        {
            log.error("获取文件内容失败: {}", e.getMessage());
            return false;
        }

        // 所有检查都通过，可以进行文件上传
        return true;
    }

    /**
     * 检查指定的存储桶是否存在于MinIO服务器上
     *
     * @param bucketName 存储桶的名称
     * @return 如果存储桶存在，则返回true；否则返回false
     */
    private boolean isBucketExist(final String bucketName)
    {
        // 使用execute方法执行一个检查存储桶是否存在的操作
        // 如果操作成功且返回值为Boolean.TRUE，则证明存储桶存在
        return Boolean.TRUE.equals(this.execute(() ->
        {
            // 创建一个请求参数对象，指定要检查的存储桶名称
            final BucketExistsArgs bucketExistsArgs = BucketExistsArgs.builder()
                                                                      .bucket(bucketName)
                                                                      .build();

            // 调用MinIO客户端的方法，检查存储桶是否存在
            return this.minioClient.bucketExists(bucketExistsArgs);
        }, CloudflareOperationLogger.Operation.FOUNT_BUCKET, "", bucketName));
    }

    /**
     * 批量上传文件到指定的存储桶
     *
     * @param bucketName  存储桶名称
     * @param objectNames 文件名列表
     * @param fileList    文件数据列表，与文件名列表对应
     * @return 包含每个文件的上传响应的Map如果文件名列表和数据列表长度不一致，则返回null
     */
    @Override
    public @Nullable Map<String, ObjectWriteResponse> uploadFileList(final String bucketName,
                                                                     final List<String> objectNames,
                                                                     final List<MultipartFile> fileList)
    {
        // 检查文件名列表和数据列表是否具有相同的长度，如果不一致则返回null
        if (objectNames.size() != fileList.size())
        {
            log.error("文件名列表和数据列表长度不一致");
            return null;
        }

        // 初始化存储上传响应的Map
        final Map<String, ObjectWriteResponse> result = new HashMap<>();

        // 遍历文件名列表，准备上传每个文件
        for (int i = 0; i < objectNames.size(); i++)
        {
            // 获取文件名和文件数据
            final String        objectName = objectNames.get(i);
            final MultipartFile file       = fileList.get(i);

            // 检查文件是否可以上传
            if (!this.isFileReadyToUpload(bucketName, objectName, file))
            {
                // 如果文件检查失败，则跳过当前文件，继续上传下一个文件
                continue;
            }

            // 上传文件到存储桶中
            final ObjectWriteResponse response = this.uploadFile(bucketName, objectName, file);

            // 将上传响应添加到结果Map中
            result.put(objectName, response);
        }

        // 返回包含所有上传响应的结果Map
        return result;
    }

    /**
     * 从指定的存储桶中删除一个文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     */
    @Override
    public void removeFile(final String bucketName, final String objectName)
    {
        // 执行删除文件操作，并记录日志
        this.execute(() ->
        {
            // 使用MinIO客户端删除存储桶中的文件
            this.minioClient.removeObject(RemoveObjectArgs.builder()
                                                          .bucket(bucketName)
                                                          .object(objectName)
                                                          .build());

            // 返回null表示操作成功
            return null;
        }, CloudflareOperationLogger.Operation.DELETE, objectName, bucketName);
    }

    /**
     * 异步删除指定桶中的文件
     * 该方法通过使用CompletableFuture实现异步操作，避免了线程等待删除操作完成的情况，提高了性能
     *
     * @param bucketName 存储桶名称，是删除文件操作的目标存储桶
     * @param objectName 文件名称，是要删除的文件的唯一标识
     */
    @Override
    public void removeFileAsync(final String bucketName, final String objectName)
    {
        // 使用CompletableFuture以异步方式运行删除文件的操作
        CompletableFuture.runAsync(() -> this.removeFile(bucketName, objectName));
    }

    /**
     * 异步删除指定桶中的多个文件
     *
     * @param bucketName  存储桶名称
     * @param objectNames 文件名称列表，这些文件将从存储桶中删除
     */
    @Override
    public void removeFileListAsync(final String bucketName, final List<String> objectNames)
    {
        // 遍历文件名称列表，对每个文件名称调用异步删除方法
        objectNames.forEach(objectName -> this.removeFileAsync(bucketName, objectName));
    }

    /**
     * 检查指定的文件是否存在于指定的存储桶中
     * 此方法通过尝试获取文件的信息来判断文件是否存在，如果文件信息不为空，则表示文件存在
     *
     * @param bucketName 存储桶名称，即文件所在的存储桶
     * @param objectName 文件名称，即要检查的文件
     * @return boolean 表示文件是否存在的布尔值，如果文件存在则返回true，否则返回false
     */
    @Override
    public boolean isFileExist(final String bucketName, final String objectName)
    {
        return this.getObjectInfo(bucketName, objectName) != null;
    }

    /**
     * 获取对象信息
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 对象信息
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
     * 获取文件URL
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 文件URL的Optional包装
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
     * 创建一个新的存储桶
     *
     * @param bucketName 存储桶的名称
     */
    @Override
    public void createBucket(final String bucketName)
    {
        // 构建创建存储桶所需的参数
        final MakeBucketArgs makeBucketArgs = MakeBucketArgs.builder()
                                                            .bucket(bucketName)
                                                            .build();

        // 执行创建存储桶的操作，并记录操作信息
        this.execute(() ->
        {
            // 使用MinIO客户端创建存储桶
            this.minioClient.makeBucket(makeBucketArgs);
            return null;
        }, CloudflareOperationLogger.Operation.CREATE, "", bucketName);
    }

    /**
     * 删除指定的存储桶
     *
     * @param bucketName 存储桶名称
     */
    @Override
    public void removeBucket(final String bucketName)
    {
        // 执行删除存储桶的操作，记录删除操作日志
        this.execute(() ->
        {
            // 使用MinIO客户端删除存储桶
            this.minioClient.removeBucket(RemoveBucketArgs.builder()
                                                          .bucket(bucketName)
                                                          .build());
            return null;
        }, CloudflareOperationLogger.Operation.DELETE_BUCKET, "", bucketName);
    }

    /**
     * 获取指定存储桶中的对象信息
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 返回对象信息的GetObject响应
     */
    @Override
    public GetObjectResponse getObject(final String bucketName, final String objectName)
    {
        // 构建获取对象的参数
        final GetObjectArgs getObjectArgs = GetObjectArgs.builder()
                                                         .bucket(bucketName)
                                                         .object(objectName)
                                                         .build();

        // 执行获取对象的操作，记录获取操作日志
        return this.execute(() -> this.minioClient.getObject(getObjectArgs),
                CloudflareOperationLogger.Operation.GET,
                objectName,
                bucketName);
    }

    /**
     * 异步获取对象
     * 该方法使用CompletableFuture异步获取指定存储桶中的对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 返回一个CompletableFuture对象，包含获取到的对象
     */
    @Override
    public CompletableFuture<GetObjectResponse> getObjectAsync(final String bucketName, final String objectName)
    {
        return CompletableFuture.supplyAsync(() -> this.getObject(bucketName, objectName));
    }

    /**
     * 异步获取多个对象列表
     * 该方法使用CompletableFuture异步获取指定存储桶中的多个对象，并返回一个包含所有获取结果的列表
     *
     * @param bucketName  存储桶名称
     * @param objectNames 对象名称列表
     * @return 返回一个包含CompletableFuture<GetObjectResponse>的列表，每个CompletableFuture对应一个获取对象的任务
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
     * 删除对象
     * 该方法同步删除指定存储桶中的对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
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

    /**
     * 异步删除对象
     * 该方法异步删除指定存储桶中的对象
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
     * 异步删除对象列表
     * 该方法异步删除指定存储桶中的多个对象
     *
     * @param bucketName  存储桶名称
     * @param objectNames 对象名称列表
     */
    @Override
    public void removeObjectListAsync(final String bucketName, final List<String> objectNames)
    {
        objectNames.forEach(objectName -> this.removeObjectAsync(bucketName, objectName));
    }

    /**
     * 供应商函数接口，允许抛出异常
     * 此接口用于定义一个可以抛出异常的供应商函数，它提供了一种通用的方式来延迟生产类型为R的对象实例
     *
     * @param <R> 表示供应商函数返回的类型
     */
    @FunctionalInterface
    private interface SupplierWithException<R>
    {
        /**
         * 获取对象实例的方法
         * 此方法声明它可以抛出异常，因此使用它的代码必须处理这些可能的异常
         *
         * @return 返回一个类型为R的对象实例
         * @throws Exception 方法执行过程中可能抛出的异常
         */
        R get() throws Exception;
    }
}