/**
 * 自定义租赁系统异常类
 * 继承自RuntimeException，用于在租赁系统中抛出自定义的异常信息
 * 通过@RequiredArgsConstructor注解自动生成所有final字段的构造函数
 */
package com.ovo307000.lease.common.exception;

import com.ovo307000.lease.common.result.ResultCodeEnum;
import lombok.Getter;

@Getter
public class LeaseException extends RuntimeException
{
    // 异常代码
    private final Integer code;

    /**
     * 根据ResultCodeEnum创建LeaseException
     *
     * @param resultCodeEnum 结果码枚举，包含异常消息和代码
     */
    public LeaseException(final ResultCodeEnum resultCodeEnum)
    {
        // 使用枚举中的消息和代码初始化异常
        super(resultCodeEnum.getMessage());
        this.code = resultCodeEnum.getCode();
    }
}
