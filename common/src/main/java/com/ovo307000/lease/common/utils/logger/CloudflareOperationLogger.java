package com.ovo307000.lease.common.utils.logger;

import com.ovo307000.lease.common.enumeration.OperationType;
import com.ovo307000.lease.common.functional.RunnableWithException;
import com.ovo307000.lease.common.functional.SupplierWithException;
import jakarta.validation.constraints.NotNull;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class CloudflareOperationLogger
{
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
    public static <R> R execute(@NotNull final SupplierWithException<R> supplier,
                                @NotNull final OperationType operation,
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

    public static void logOperationAttempt(final OperationType operation,
                                           final String objectName,
                                           final String bucketName)
    {
        log.info("尝试{} `{}` 在 `{}`", getOperationDescription(operation), objectName, bucketName);
    }

    public static void logOperationSuccess(final OperationType operation,
                                           final String objectName,
                                           final String bucketName)
    {
        log.info("{} `{}` 在 `{}` 成功", getOperationDescription(operation), objectName, bucketName);
    }

    public static void logOperationFailure(final OperationType operation,
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

    private static String getOperationDescription(final OperationType operation)
    {
        return switch (operation)
        {
            case SAVE_OBJECT -> OperationType.SAVE_OBJECT.getDescription();
            case GET_OBJECT -> OperationType.GET_OBJECT.getDescription();
            case DELETE_OBJECT -> OperationType.DELETE_OBJECT.getDescription();
            case LIST_OBJECTS -> OperationType.LIST_OBJECTS.getDescription();
            case CREATE_BUCKET -> OperationType.CREATE_BUCKET.getDescription();
            case DELETE_BUCKET -> OperationType.DELETE_BUCKET.getDescription();
            case LIST_BUCKETS -> OperationType.LIST_BUCKETS.getDescription();
            case CHECK_BUCKET_EXISTENCE -> OperationType.CHECK_BUCKET_EXISTENCE.getDescription();
            case UPLOAD_OBJECT -> OperationType.UPLOAD_OBJECT.getDescription();
        };
    }

    public static void execute(@NotNull final RunnableWithException runnable,
                               @NotNull final OperationType operation,
                               @NotNull final String objectName,
                               @NotNull final String bucketName)
    {
        try
        {
            // 记录操作尝试开始
            CloudflareOperationLogger.logOperationAttempt(operation, objectName, bucketName);

            // 执行提供的操作
            runnable.run();

            // 记录操作成功完成
            CloudflareOperationLogger.logOperationSuccess(operation, objectName, bucketName);
        }
        catch (final Exception e)
        {
            // 记录操作失败信息和异常详情
            CloudflareOperationLogger.logOperationFailure(operation, objectName, bucketName, e);
        }
    }

    public static void execute(@NotNull final RunnableWithException runnable,
                               @NotNull final OperationType operation,
                               @NotNull final String bucketName)
    {
        try
        {
            // 记录操作尝试开始
            CloudflareOperationLogger.logOperationAttempt(operation, bucketName);

            // 执行提供的操作
            runnable.run();

            // 记录操作成功完成
            CloudflareOperationLogger.logOperationSuccess(operation, bucketName);
        }
        catch (final Exception e)
        {
            // 记录操作失败信息和异常详情
            CloudflareOperationLogger.logOperationFailure(operation, bucketName, e.getMessage());
        }
    }

    public static void logOperationAttempt(final OperationType operation, final String bucketName)
    {
        log.info("尝试{} `{}`", getOperationDescription(operation), bucketName);
    }

    public static void logOperationSuccess(final OperationType operation, final String bucketName)
    {
        log.info("{} `{}` 成功", getOperationDescription(operation), bucketName);
    }

    public static void logOperationFailure(final OperationType operation, final String bucketName, final String message)
    {
        log.error("{} `{}` 失败: {}", getOperationDescription(operation), bucketName, message);
    }

    public static <R> R execute(@NotNull final SupplierWithException<R> supplier,
                                @NotNull final OperationType operation,
                                @NotNull final String bucketName)
    {
        try
        {
            // 记录操作尝试开始
            CloudflareOperationLogger.logOperationAttempt(operation, bucketName);

            // 执行供应商函数提供的操作，并返回结果
            final R result = supplier.get();

            // 记录操作成功完成
            CloudflareOperationLogger.logOperationSuccess(operation, bucketName);

            return result;
        }
        catch (final Exception e)
        {
            // 记录操作失败信息和异常详情
            CloudflareOperationLogger.logOperationFailure(operation, bucketName, e.getMessage());

            return null;
        }
    }
}

