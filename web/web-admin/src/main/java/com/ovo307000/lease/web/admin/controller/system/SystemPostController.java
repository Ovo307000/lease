package com.ovo307000.lease.web.admin.controller.system;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.SystemPost;
import com.ovo307000.lease.module.enums.BaseStatus;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@Tag(name = "后台用户岗位管理")
@RequestMapping("/admin/system/post")
public class SystemPostController
{

    @Operation(summary = "分页获取岗位信息")
    @GetMapping("page")
    private Result<IPage<SystemPost>> page(@RequestParam final long current, @RequestParam final long size)
    {
        return Result.ok();
    }

    @Operation(summary = "保存或更新岗位信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final SystemPost systemPost)
    {
        return Result.ok();
    }

    @DeleteMapping("deleteById")
    @Operation(summary = "根据id删除岗位")
    public Result<Void> removeById(@RequestParam final Long id)
    {

        return Result.ok();
    }

    @GetMapping("getById")
    @Operation(summary = "根据id获取岗位信息")
    public Result<SystemPost> getById(@RequestParam final Long id)
    {
        return Result.ok();
    }

    @Operation(summary = "获取全部岗位列表")
    @GetMapping("list")
    public Result<List<SystemPost>> list()
    {
        return Result.ok();
    }

    @Operation(summary = "根据岗位id修改状态")
    @PostMapping("updateStatusByPostId")
    public Result<Void> updateStatusByPostId(@RequestParam final Long id, @RequestParam final BaseStatus status)
    {
        return Result.ok();
    }
}
