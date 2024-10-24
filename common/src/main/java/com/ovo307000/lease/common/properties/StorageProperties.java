package com.ovo307000.lease.common.properties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class StorageProperties
{
    protected String endpoint;                      // 远程存储服务的地址
    protected String accessKeyId;                   // 访问密钥 ID
    protected String secretAccessKey;               // 访问密钥
    protected String bucketName;                    // 存储桶名称
    protected Long   largeFileThresholdOfBytes;     // 大文件的阈值
    protected Long   maxFileSizeOfBytes;            // 最大文件大小
}
