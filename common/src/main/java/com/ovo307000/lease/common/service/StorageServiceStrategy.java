package com.ovo307000.lease.common.service;

import io.minio.GetObjectResponse;
import io.minio.ObjectWriteResponse;
import io.minio.StatObjectResponse;
import jakarta.validation.constraints.NotNull;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;

public interface StorageServiceStrategy
{
    /**
     * 异步获取文件URL
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 文件URL的CompletableFuture
     */
    CompletableFuture<Optional<String>> getFileUrlAsync(@NotNull String bucketName, @NotNull String objectName);


    /**
     * 上传对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param bytes      对象字节数组
     */
    ObjectWriteResponse putObject(@NotNull String bucketName, @NotNull String objectName, @NotNull byte[] bytes);

    /**
     * 上传对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param file       文件
     */
    ObjectWriteResponse putObject(@NotNull String bucketName, @NotNull String objectName, @NotNull MultipartFile file);

    /**
     * 异步上传对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param bytes      对象字节数组
     * @return 上传是否成功的CompletableFuture
     */
    CompletableFuture<ObjectWriteResponse> putObjectAsync(@NotNull String bucketName,
                                                          @NotNull String objectName,
                                                          @NotNull byte[] bytes);

    /**
     * 异步上传多个对象
     *
     * @param bucketName 存储桶名称
     * @param files      文件列表
     * @return 每个对象上传结果的CompletableFuture
     */
    Map<String, CompletableFuture<ObjectWriteResponse>> putObjectListAsync(@NotNull String bucketName,
                                                                           @NotNull List<MultipartFile> files);

    /**
     * 同步删除指定存储桶中的文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     */
    void removeFile(String bucketName, String objectName);

    /**
     * 异步删除指定存储桶中的文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 文件名称
     */
    void removeFileAsync(String bucketName, String objectName);

    /**
     * 异步批量删除存储桶中的文件列表
     *
     * @param bucketName  存储桶名称
     * @param objectNames 文件名称列表
     */
    void removeFileListAsync(String bucketName, List<String> objectNames);

    /**
     * 检查文件是否存在
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 文件是否存在
     */
    boolean isFileExist(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 获取对象信息
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    StatObjectResponse getObjectInfo(@NotNull String bucketName, @NotNull String objectName);


    /**
     * 获取文件URL
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 文件URL的Optional包装
     */
    Optional<String> getFileUrl(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 创建存储桶
     *
     * @param bucketName 存储桶名称
     */
    void createBucket(@NotNull String bucketName);

    /**
     * 获取对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 对象的GetResponse
     */
    GetObjectResponse getObject(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步获取对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 获取操作的CompletableFuture
     */
    CompletableFuture<GetObjectResponse> getObjectAsync(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步批量获取对象列表
     *
     * @param bucketName  存储桶名称
     * @param objectNames 对象名称列表
     * @return 每个对象的CompletableFuture
     */
    List<CompletableFuture<GetObjectResponse>> getObjectListAsync(String bucketName, List<String> objectNames);

    /**
     * 删除对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    void removeObject(String bucketName, String objectName);

    /**
     * 异步删除对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    void removeObjectAsync(String bucketName, String objectName);

    /**
     * 异步批量删除对象列表
     *
     * @param bucketName  存储桶名称
     * @param objectNames 对象名称列表
     */
    void removeObjectListAsync(String bucketName, List<String> objectNames);
}