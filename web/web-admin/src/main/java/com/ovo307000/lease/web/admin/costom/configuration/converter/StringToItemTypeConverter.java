package com.ovo307000.lease.web.admin.costom.configuration.converter;

import com.ovo307000.lease.module.enums.ItemType;
import org.springframework.core.convert.converter.Converter;
import org.springframework.lang.NonNull;

import java.util.Arrays;

/**
 * 字符串到ItemType枚举的转换器
 * <p>
 * 这个类实现了Spring的Converter接口，用于将字符串转换为ItemType枚举类型。
 */
public class StringToItemTypeConverter implements Converter<String, ItemType>
{

    /**
     * 将字符串转换为ItemType枚举
     *
     * @param source 要转换的字符串
     * @return 对应的ItemType枚举值
     * @throws IllegalArgumentException 如果没有匹配的枚举值
     */
    @Override
    public ItemType convert(@NonNull final String source)
    {
        return Arrays.stream(ItemType.values())
                     .filter(itemType -> this.isMatchingItemType(itemType, source))
                     .findFirst()
                     .orElseThrow(() -> new IllegalArgumentException("No matching ItemType for [" + source + "]"));
    }

    /**
     * 检查ItemType是否匹配给定的字符串
     *
     * @param itemType 要检查的ItemType
     * @param source   要匹配的字符串
     * @return 如果匹配返回true，否则返回false
     */
    private boolean isMatchingItemType(final ItemType itemType, final String source)
    {
        return itemType.getCode()
                       .toString()
                       .equals(source);
    }
}