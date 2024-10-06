package com.ovo307000.lease.web.admin.costom.configuration.converter;

import com.ovo307000.lease.module.enums.BaseEnum;
import org.springframework.core.convert.converter.Converter;
import org.springframework.core.convert.converter.ConverterFactory;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Component
public class StringToBaseEnumConverterFactory implements ConverterFactory<String, BaseEnum>
{
    /**
     * 为枚举类型的转换提供一个通用的转换器
     * 该方法覆盖了父类的同名方法，专门用于将字符串转换为指定的枚举类型
     *
     * @param <T>        泛型类型，表示枚举类型，必须是BaseEnum的子类
     * @param targetType 目标枚举类型，不能为null
     * @return 返回一个Converter实例，该实例用于将字符串转换为指定的枚举类型
     */
    @Override
    public <T extends BaseEnum> @NonNull Converter<String, T> getConverter(@NonNull final Class<T> targetType)
    {
        // 返回一个Lambda表达式，实现了Converter接口，用于将字符串转换为指定的枚举类型
        return source -> this.convertToEnum(targetType, source);
    }

    /**
     * 将字符串转换为指定枚举类型
     *
     * @param targetType 目标枚举类型，必须是BaseEnum的子类
     * @param source     待转换的字符串，表示枚举的代码
     * @param <T>        泛型类型，表示枚举的具体类型
     * @return 转换后的枚举对象
     * @throws IllegalArgumentException 如果找不到匹配的枚举元素或源字符串无法转换为整数
     */
    private <T extends BaseEnum> T convertToEnum(final Class<T> targetType, final String source)
    {
        final int intValue;

        // 将源字符串转换为整数
        try
        {
            intValue = Integer.parseInt(source);
        }
        catch (final NumberFormatException e)
        {
            // 如果源字符串无法转换为整数，则抛出异常
            throw new IllegalArgumentException("Cannot convert " + source + " to integer");
        }

        // 从目标枚举类型的所有常量中查找与转换后的整数匹配的枚举元素
        return Arrays.stream(targetType.getEnumConstants())
                     .filter(e -> e.getCode()
                                   .equals(intValue))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("No matching constant for " + source));
    }
}