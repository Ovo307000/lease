package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.properties.StorageProperties;
import io.minio.MinioClient;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface StorageService extends Service
{
    void uploadObject(String bucketName, MultipartFile file, MinioClient client, StorageProperties properties);

    void uploadObjectList(String bucketName, List<MultipartFile> fileList, MinioClient client, StorageProperties properties);


    boolean isBucketExists(String bucketName, MinioClient client, StorageProperties properties);
}
