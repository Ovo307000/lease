package com.ovo307000.lease.common.properties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class StorageProperties
{
    protected String endpoint;
    protected String accessKeyId;
    protected String secretAccessKey;
    protected String bucketName;
    protected Long   largeFileThresholdOfBytes;
    protected Long   maxFileSizeOfBytes;
}
