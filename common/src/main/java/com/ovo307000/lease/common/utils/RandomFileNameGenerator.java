package com.ovo307000.lease.common.utils;

import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class RandomFileNameGenerator
{
    /**
     * 生成一个随机的文件名，规则是：UUID + "." + 原文件的后缀
     *
     * @param originalFileName 原文件名
     * @return 生成的文件名
     */
    public String generateFileName(@NonNull final String originalFileName)
    {
        if (originalFileName.isEmpty())
        {
            throw new IllegalArgumentException("文件名为空");
        }

        return UUID.randomUUID() + this.getFileSuffix(originalFileName);
    }

    /**
     * 通过文件名获取文件的后缀
     *
     * @param originalFileName 文件名
     * @return 文件的后缀
     */
    private String getFileSuffix(@NonNull final String originalFileName)
    {
        final String fileSuffix = originalFileName.substring(originalFileName.lastIndexOf("."));

        if (fileSuffix.isEmpty())
        {
            throw new IllegalArgumentException("文件后缀为空");
        }

        return fileSuffix;
    }
}
