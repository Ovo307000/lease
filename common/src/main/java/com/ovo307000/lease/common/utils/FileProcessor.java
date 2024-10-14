package com.ovo307000.lease.common.utils;

import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import java.util.UUID;

@Slf4j
@Component
public class FileProcessor
{
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

    public String generateRandomNameFromMultipartFile(final MultipartFile file)
    {
        return this.generateRandomName(Objects.requireNonNull(file.getOriginalFilename()));
    }

    /**
     * 生成随机文件名，以避免重名和提高文件的独特性
     * 文件名的生成规则为：当前日期时间格式化字符串/UUID-原始文件名
     * 例如：20210908123456/123e4567-e89b-12d3-a456-426614174000-abc.jpg
     *
     * @param originalName 原始文件名，用于保留文件的原始名称信息
     * @return 返回拼接后的随机文件名
     * @throws IllegalArgumentException 如果原始文件名为空，则抛出此异常
     */
    public String generateRandomName(final String originalName)
    {
        // 检查原始文件名是否为空，如果为空则抛出IllegalArgumentException异常
        if (originalName.isEmpty())
        {
            throw new IllegalArgumentException("原始文件名为空");
        }

        // 使用当前日期时间格式化字符串和UUID以及原始文件名拼接成一个新的文件名
        return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) +
               "/" +
               UUID.randomUUID() +
               "-" +
               originalName;
    }

    public File getFileFromMultiPart(final MultipartFile file)
    {
        try
        {
            return file.getResource()
                       .getFile();
        }
        catch (final IOException e)
        {
            log.error("从 {} 中获取文件失败", file.getOriginalFilename(), e);
            return null;
        }
    }
}
