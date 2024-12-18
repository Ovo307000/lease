package com.ovo307000.lease.web.admin.controller.apartment;

import com.ovo307000.lease.common.properties.storage.MinioProperties;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.common.service.MinioService;
import com.ovo307000.lease.common.utils.CloudStorageUtils;
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

import java.util.List;
import java.util.Optional;

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

    // 注入Minio服务接口
    private final MinioService    minioService;
    // 注入Minio客户端
    private final MinioClient     minioClient;
    // 注入Minio配置属性
    private final MinioProperties minioProperties;

    /**
     * 上传文件到Minio
     *
     * @param file 待上传的文件
     * @return 上传结果，包含文件的URL
     */
    @Operation(summary = "上传文件")
    @PostMapping("upload")
    public Result<String> upload(@RequestParam final MultipartFile file)
    {
        // 记录文件上传日志
        log.info("上传文件：{}", file.getOriginalFilename());

        // 调用Minio服务上传文件，并获取上传响应结果
        final ObjectWriteResponse objectWriteResponse;
        objectWriteResponse = this.minioService.uploadObject(file, this.minioClient, this.minioProperties);

        // 生成文件的访问URL
        final String objectUrl;
        objectUrl = Optional.ofNullable(CloudStorageUtils.getObjectUrl(this.minioClient, objectWriteResponse))
                            .orElseThrow(() -> new RuntimeException(ResultCodeEnum.FILE_UPLOAD_FAILED.getMessage()));

        // 记录文件上传成功的日志，附带文件URL
        log.info("文件上传成功，URL：{}", objectUrl);

        // 返回上传成功的结果，包含文件URL
        return Result.success(objectUrl);
    }

    /**
     * 上传文件列表到Minio
     *
     * @param fileList 待上传的文件列表
     * @return 上传结果，包含文件的URL列表
     */
    @Operation(summary = "上传文件列表")
    @PostMapping("uploadList")
    public Result<List<String>> uploadList(@RequestParam final List<MultipartFile> fileList)
    {
        // 记录文件上传日志
        log.info("上传文件列表：{}", fileList);

        // 调用Minio服务上传文件列表，并获取上传响应结果
        final List<ObjectWriteResponse> objectWriteResponseList;
        objectWriteResponseList = this.minioService.uploadObjectList(fileList, this.minioClient, this.minioProperties);

        // 生成文件的访问URL列表
        final List<String> objectUrlList;
        objectUrlList = objectWriteResponseList.stream()
                                               // 将响应对象转换为文件URL，如果URL为空则抛出异常
                                               .map(response -> Optional.ofNullable(CloudStorageUtils.getObjectUrl(this.minioClient,
                                                                                response))
                                                                        .orElseThrow(() -> new RuntimeException(
                                                                                ResultCodeEnum.FILE_UPLOAD_FAILED.getMessage())))
                                               .toList();

        // 记录文件上传成功的日志，附带文件URL列表
        log.info("文件上传成功，URL列表：{}", objectUrlList);

        // 返回上传成功的结果，包含文件URL列表
        return Result.success(objectUrlList);
    }
}
