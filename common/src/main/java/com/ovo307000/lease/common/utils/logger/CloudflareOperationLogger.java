package com.ovo307000.lease.common.utils.logger;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class CloudflareOperationLogger
{
    public static void logOperationAttempt(final Operation operation, final String objectName, final String bucketName)
    {
        log.info("尝试{} `{}` 在 `{}`", getOperationDescription(operation), objectName, bucketName);
    }

    private static String getOperationDescription(final Operation operation)
    {
        return switch (operation)
        {
            case UPLOAD -> "上传";
            case PUT -> "放置";
            case DOWNLOAD -> "下载";
            case DELETE -> "删除";
            case LIST -> "列出";
            case GET -> "获取";
            case CREATE_BUCKET -> "创建存储桶";
            case DELETE_BUCKET -> "删除存储桶";
            case CREATE -> "创建";
        };
    }

    public static void logOperationSuccess(final Operation operation, final String objectName, final String bucketName)
    {
        log.info("{} `{}` 在 `{}` 成功", getOperationDescription(operation), objectName, bucketName);
    }

    public static void logOperationFailure(final Operation operation,
                                           final String objectName,
                                           final String bucketName,
                                           final Exception e)
    {
        log.error("{} `{}` 在 `{}` 失败: {}",
                getOperationDescription(operation),
                objectName,
                bucketName,
                e.getMessage());
    }

    public enum Operation
    {
        UPLOAD,
        PUT,
        DOWNLOAD,
        DELETE,
        LIST,
        CREATE_BUCKET,
        GET,
        CREATE,
        DELETE_BUCKET
    }
}

