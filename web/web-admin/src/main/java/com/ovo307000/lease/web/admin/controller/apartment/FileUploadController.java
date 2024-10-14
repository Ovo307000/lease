package com.ovo307000.lease.web.admin.controller.apartment;

import com.ovo307000.lease.common.properties.MinioProperties;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.common.service.MinioService;
import io.minio.MinioClient;
import io.minio.ObjectWriteResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * 文件上传控制器，提供文件上传的接口
 */
@Slf4j
@Tag(name = "文件管理")
@RequestMapping("/admin/file")
@RequiredArgsConstructor
@RestController
public class FileUploadController
{

    private final MinioService    minioService;
    private final MinioClient     minioClient;
    private final MinioProperties minioProperties;

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
        log.info("上传文件：{}", file.getOriginalFilename());

        final ObjectWriteResponse objectWriteResponse = this.minioService.uploadObject(file,
                this.minioClient,
                this.minioProperties);

        return objectWriteResponse.object().isEmpty() ?
                Result.failure(ResultCodeEnum.FILE_UPLOAD_FAILED) :
                Result.success(objectWriteResponse.object());
    }
}
