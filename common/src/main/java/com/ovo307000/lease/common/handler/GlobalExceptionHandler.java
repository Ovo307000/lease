package com.ovo307000.lease.common.handler;

import com.ovo307000.lease.common.result.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理器，用于处理系统中未捕获的异常
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler
{
    /**
     * 捕获并处理所有异常类
     *
     * @param exception 传入的异常对象
     * @return 返回一个Result对象，其中包含异常处理结果
     */
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public <R> Result<R> handleException(final Exception exception)
    {
        // 记录异常日志
        log.error("发生异常", exception);

        // 返回一个表示失败的Result对象，表明异常发生
        return Result.failure();
    }
}
