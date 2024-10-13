package com.ovo307000.lease.common.utils;

import jakarta.annotation.Nullable;
import jakarta.validation.constraints.NotNull;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.UUID;

@Component
public class FileProcessor
{
    /**
     * 生成一个随机的文件名，规则是：UUID + "." + 原文件的后缀
     *
     * @param originalFileName 原文件名
     * @return 生成的文件名
     */
    public String generateUUIDFileName(@NonNull final String originalFileName)
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
    public String getFileSuffix(@NonNull final String originalFileName)
    {
        final String fileSuffix = originalFileName.substring(originalFileName.lastIndexOf("."));

        if (fileSuffix.isEmpty())
        {
            throw new IllegalArgumentException("文件后缀为空");
        }

        return fileSuffix;
    }

    /**
     * 通过文件路径获取文件名
     *
     * @param filePath 文件路径
     * @return 文件名
     */
    public String getFileNameWithoutFilePath(@NonNull final String filePath)
    {
        final String fileName = filePath.substring(filePath.lastIndexOf("/"));

        if (fileName.isEmpty())
        {
            throw new IllegalArgumentException("文件名为空");
        }

        return fileName;
    }

    /**
     * 将 MultipartFile 转换成 byte[]，如果获取失败就抛出 IllegalArgumentException
     *
     * @param file MultipartFile 对象
     * @return 文件的字节数组
     */
    public @Nullable byte[] getBytesFromFile(@NotNull final MultipartFile file)
    {
        try
        {
            return file.getBytes();
        }
        catch (final Exception e)
        {
            return null;
        }
     }
}
