package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.enumeration.OperationType;
import com.ovo307000.lease.common.properties.StorageProperties;
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
import java.util.concurrent.CompletableFuture;

/**
 * CloudflareServiceStrategy 是一个实现了 StorageServiceStrategy 接口的服务类，
 * 负责与 Cloudflare R2 存储服务进行交互。
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class MinioService implements StorageService
{
    private final FileProcessor fileProcessor;

    @Override
    public ObjectWriteResponse uploadObject(final String bucketName,
                                            final MultipartFile file,
                                            final MinioClient client,
                                            final StorageProperties properties)
    {
        // 检查文件是否准备就绪以进行上传
        if (!CloudStorageUtils.isFileReadyToUpload(bucketName, file, client, properties))
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
                                                                                     .stream(file.getInputStream(),
                                                                                             file.getSize(),
                                                                                             -1)
                                                                                     .contentType(file.getContentType())
                                                                                     .build()),
                OperationType.UPLOAD_OBJECT,
                fileName,
                bucketName);
    }

    @Override
    public List<ObjectWriteResponse> uploadObjectList(final String bucketName,
                                                      final List<MultipartFile> fileList,
                                                      final MinioClient client,
                                                      final StorageProperties properties)
    {
        return fileList.stream()
                       .map(file -> CompletableFuture.supplyAsync(() -> this.uploadObject(bucketName,
                               file,
                               client,
                               properties)))
                       .map(CompletableFuture::join)
                       .toList();

    }

    @Override
    public boolean isBucketExists(final String bucketName, final MinioClient client, final StorageProperties properties)
    {
        final BucketExistsArgs existsArgs = BucketExistsArgs.builder()
                                                            .bucket(bucketName)
                                                            .build();

        return Boolean.TRUE.equals(CloudflareOperationLogger.execute(() -> client.bucketExists(existsArgs),
                OperationType.CHECK_BUCKET_EXISTENCE,
                bucketName,
                bucketName));
    }
}