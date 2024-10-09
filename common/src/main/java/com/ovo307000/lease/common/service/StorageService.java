package com.ovo307000.lease.common.service;

import io.minio.ObjectWriteResponse;
import jakarta.validation.constraints.NotNull;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;

public interface StorageService
{

    /**
     * 上传文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param bytes      文件字节数组
     * @return 上传响应的Optional包装
     */
    Optional<ObjectWriteResponse> uploadFile(@NotNull String bucketName,
                                             @NotNull String objectName,
                                             @NotNull byte[] bytes);

    /**
     * 异步获取文件URL
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 文件URL的CompletableFuture
     */
    CompletableFuture<Optional<String>> getFileUrlAsync(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步上传文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param bytes      文件字节数组
     * @return 上传是否成功的CompletableFuture
     */
    CompletableFuture<Boolean> uploadFileAsync(@NotNull String bucketName,
                                               @NotNull String objectName,
                                               @NotNull byte[] bytes);

    /**
     * 异步上传多个文件
     *
     * @param bucketName 存储桶名称
     * @param files      文件列表
     * @return 每个文件上传结果的CompletableFuture
     */
    CompletableFuture<Map<String, Boolean>> uploadFileListAsync(@NotNull String bucketName,
                                                                @NotNull List<MultipartFile> files);

    /**
     * 上传对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @param bytes      对象字节数组
     * @return 上传响应的Optional包装
     */
    ObjectWriteResponse putObject(@NotNull String bucketName,
                                  @NotNull String objectName,
                                  @NotNull byte[] bytes);

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
     * 删除文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    void deleteFile(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 下载文件
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 下载的文件的Optional包装
     */
    Optional<MultipartFile> downloadFile(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 检查文件是否存在
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 文件是否存在
     */
    boolean isFileExist(@NotNull String bucketName, @NotNull String objectName);

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
     * 列出存储桶中的所有对象
     *
     * @param bucketName 存储桶名称
     * @return 对象名称列表
     */
    List<String> listObjects(@NotNull String bucketName);

    /**
     * 删除存储桶
     *
     * @param bucketName 存储桶名称
     */
    void deleteBucket(@NotNull String bucketName);

    /**
     * 获取对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     */
    void getObject(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步获取对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 获取操作的CompletableFuture
     */
    CompletableFuture<Void> getObjectAsync(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步获取对象列表
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 获取操作的CompletableFuture
     */
    CompletableFuture<Void> getObjectListAsync(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步删除对象
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 删除操作的CompletableFuture
     */
    CompletableFuture<Void> deleteObjectAsync(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步删除对象列表
     *
     * @param bucketName 存储桶名称
     * @param objectName 对象名称
     * @return 删除操作的CompletableFuture
     */
    CompletableFuture<Void> deleteObjectListAsync(@NotNull String bucketName, @NotNull String objectName);

    /**
     * 异步列出对象
     *
     * @return 列出操作的CompletableFuture
     */
    CompletableFuture<Void> listObjectsAsync();

    /**
     * 异步列出对象列表
     *
     * @return 列出操作的CompletableFuture
     */
    CompletableFuture<Void> listObjectsListAsync();
}