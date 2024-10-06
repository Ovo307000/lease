package com.ovo307000.lease.common.result;

import lombok.Data;

/**
 * 全局统一返回结果类
 */
@Data
public class Result<T>
{

    //返回码
    private Integer code;

    //返回消息
    private String message;

    //返回数据
    private T data;

    public Result()
    {
    }

    public static <T> Result<T> ok()
    {
        return Result.ok(null);
    }

    public static <T> Result<T> ok(final T data)
    {
        return build(data, ResultCodeEnum.SUCCESS);
    }

    public static <T> Result<T> build(final T body, final ResultCodeEnum resultCodeEnum)
    {
        final Result<T> result = build(body);
        result.setCode(resultCodeEnum.getCode());
        result.setMessage(resultCodeEnum.getMessage());
        return result;
    }

    private static <T> Result<T> build(final T data)
    {
        final Result<T> result = new Result<>();
        if (data != null)
        {
            result.setData(data);
        }
        return result;
    }

    public static <T> Result<T> fail()
    {
        return build(null, ResultCodeEnum.FAIL);
    }

    public static <T> Result<T> fail(final ResultCodeEnum resultCodeEnum)
    {
        return build(null, resultCodeEnum);
    }
}
