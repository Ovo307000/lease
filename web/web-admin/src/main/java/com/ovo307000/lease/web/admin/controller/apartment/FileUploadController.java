package com.ovo307000.lease.web.admin.controller.apartment;

import com.ovo307000.lease.common.properties.CloudflareProperties;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.common.service.CloudflareServiceStrategy;
import io.minio.ObjectWriteResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * 文件上传控制器，提供文件上传的接口
 */
@Tag(name = "文件管理")
@RequestMapping("/admin/file")
@RequiredArgsConstructor
@RestController
public class FileUploadController
{
    /**
     * 存储服务策略接口，用于执行文件存储操作
     */
    private final CloudflareServiceStrategy cloudflareServiceStrategy;

    /**
     * Cloudflare配置属性，包含Cloudflare相关的信息和配置
     */
    private final CloudflareProperties   cloudflareProperties;

    /**
     * 上传文件接口
     *
     * @param file 待上传的文件，由前端请求传递
     * @return 返回上传结果，包含成功或失败的信息
     */
    @Operation(summary = "上传文件")
    @PostMapping("upload")
    public Result<String> upload(@RequestParam final MultipartFile file)
    {
        // 获取存储桶名称
        final String              bucketName = this.cloudflareProperties.getBucketName();
        // 获取文件原始名称
        final String              objectName = file.getOriginalFilename();
        // 通过存储服务策略接口上传文件到指定存储桶
        final ObjectWriteResponse response   = this.cloudflareServiceStrategy.uploadFile(bucketName, objectName, file.getContentType(), file);

        // 根据上传结果返回成功或失败的信息
        return response != null ? Result.ok(response.object()) : Result.fail(ResultCodeEnum.FILE_UPLOAD_FAILED);
    }
}
