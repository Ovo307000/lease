package com.ovo307000.lease.web.admin.controller.system;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.SystemPost;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.admin.service.impl.SystemPostServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 后台用户岗位管理控制器
 * 提供岗位信息的保存、更新、删除和查询等操作
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "后台用户岗位管理")
@RequestMapping("/admin/system/post")
public class SystemPostController
{
    private final SystemPostServiceImpl systemPostServiceImpl;

    /**
     * 分页获取岗位信息
     * <p>
     * 该方法接受当前页码和页大小作为参数，返回一个包含岗位信息的分页结果
     * </p>
     *
     * @param current 当前页码
     * @param size    页大小
     * @return 包含岗位信息的分页结果
     */
    @Operation(summary = "分页获取岗位信息")
    @GetMapping("page")
    private Result<IPage<SystemPost>> page(@RequestParam final long current, @RequestParam final long size)
    {
        log.info("分页获取岗位信息: current={}, size={}", current, size);

        final Page<SystemPost> page = new Page<>(current, size);

        final IPage<SystemPost> systemPostPage = this.systemPostServiceImpl.page(page, new LambdaQueryWrapper<>());

        return Result.success(systemPostPage);
    }

    /**
     * 保存或更新岗位信息
     * <p>
     * 该方法接受一个 SystemPost 对象作为请求体，用于保存或更新岗位信息
     * </p>
     *
     * @param systemPost 岗位信息实体
     * @return 操作结果
     */
    @Operation(summary = "保存或更新岗位信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final SystemPost systemPost)
    {
        log.info("保存或更新岗位信息: {}", systemPost);

        final boolean saved = this.systemPostServiceImpl.saveOrUpdate(systemPost);

        return saved ? Result.success() : Result.failure();
    }

    /**
     * 根据id删除岗位信息
     * <p>
     * 该方法接受一个 Long 类型的 id 参数，删除对应的岗位信息
     * </p>
     *
     * @param id 岗位id
     * @return 操作结果
     */
    @DeleteMapping("deleteById")
    @Operation(summary = "根据id删除岗位")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        log.info("删除岗位信息: id={}", id);

        final boolean removed = this.systemPostServiceImpl.removeById(id);

        return removed ? Result.success() : Result.failure();
    }

    /**
     * 根据id获取岗位信息
     * <p>
     * 该方法接受一个 Long 类型的 id 参数，返回对应的岗位信息
     * </p>
     *
     * @param id 岗位id
     * @return 岗位信息
     */
    @GetMapping("getById")
    @Operation(summary = "根据id获取岗位信息")
    public Result<SystemPost> getById(@RequestParam final Long id)
    {
        log.info("根据id获取岗位信息: id={}", id);

        final SystemPost systemPost = this.systemPostServiceImpl.getById(id);

        return Result.success(systemPost);
    }

    /**
     * 获取全部岗位列表
     * <p>
     * 该方法不接受任何参数，返回所有岗位信息的列表
     * </p>
     *
     * @return 全部岗位信息列表
     */
    @Operation(summary = "获取全部岗位列表")
    @GetMapping("list")
    public Result<List<SystemPost>> list()
    {
        log.info("获取全部岗位列表");

        final List<SystemPost> systemPostList = this.systemPostServiceImpl.list();

        return Result.success(systemPostList);
    }

    /**
     * 根据岗位id修改状态
     * <p>
     * 该方法接受岗位id和状态作为参数，更新对应岗位的状态
     * </p>
     *
     * @param id     岗位id
     * @param status 岗位状态
     * @return 操作结果
     */
    @Operation(summary = "根据岗位id修改状态")
    @PostMapping("updateStatusByPostId")
    public Result<Void> updateStatusByPostId(@RequestParam final Long id, @RequestParam final BaseStatus status)
    {
        log.info("根据岗位id修改状态: id={}, status={}", id, status);

        final LambdaUpdateWrapper<SystemPost> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(SystemPost::getId, id)
                     .set(SystemPost::getStatus, status);

        final boolean updated = this.systemPostServiceImpl.update(updateWrapper);

        return updated ? Result.success() : Result.failure();
    }
}
