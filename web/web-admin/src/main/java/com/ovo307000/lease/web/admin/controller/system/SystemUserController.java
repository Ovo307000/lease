package com.ovo307000.lease.web.admin.controller.system;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.SystemUser;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.admin.service.impl.SystemUserServiceImpl;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserItemVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserQueryVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

/**
 * 后台用户信息管理控制器
 * 提供后台用户信息的保存、更新、删除和查询等操作
 */
@Slf4j
@Tag(name = "后台用户信息管理")
@RestController
@RequestMapping("/admin/system/user")
public class SystemUserController
{
    private final SystemUserServiceImpl systemUserServiceImpl;

    /**
     * 构造函数，注入 SystemUserServiceImpl
     *
     * @param systemUserServiceImpl 后台用户服务实现类
     */
    public SystemUserController(final SystemUserServiceImpl systemUserServiceImpl)
    {
        this.systemUserServiceImpl = systemUserServiceImpl;
    }

    /**
     * 根据条件分页查询后台用户列表
     * <p>
     * 该方法接受当前页码、页大小和查询条件对象作为参数，返回一个包含后台用户信息的分页结果
     * </p>
     *
     * @param current 当前页码
     * @param size    页大小
     * @param queryVo 查询条件对象
     * @return 包含后台用户信息的分页结果
     */
    @Operation(summary = "根据条件分页查询后台用户列表")
    @GetMapping("page")
    public Result<IPage<SystemUserItemVo>> page(@RequestParam final long current,
                                                @RequestParam final long size,
                                                final SystemUserQueryVo queryVo)
    {
        log.info("分页查询后台用户信息: current={}, size={}, queryVo={}", current, size, queryVo);

        final Page<SystemUserItemVo> page = new Page<>(current, size);

        final IPage<SystemUserItemVo> systemUserItemVoIPage = this.systemUserServiceImpl.pageSystemUser(page, queryVo);

        return Result.success(systemUserItemVoIPage);
    }

    /**
     * 根据ID查询后台用户信息
     * <p>
     * 该方法接受一个 Long 类型的 id 参数，返回对应的后台用户信息
     * </p>
     *
     * @param id 后台用户id
     * @return 后台用户信息
     */
    @Operation(summary = "根据ID查询后台用户信息")
    @GetMapping("getById")
    public Result<SystemUserItemVo> getById(@RequestParam final Long id)
    {
        log.info("查询后台用户信息: id={}", id);

        final SystemUserItemVo systemUserItemVo = this.systemUserServiceImpl.getSystemUserItemVoById(id);

        return Result.success(systemUserItemVo);
    }

    /**
     * 保存或更新后台用户信息
     * <p>
     * 该方法接受一个 SystemUser 对象作为请求体，用于保存或更新后台用户信息
     * </p>
     *
     * @param systemUser 后台用户信息实体
     * @return 操作结果
     */
    @Operation(summary = "保存或更新后台用户信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final SystemUser systemUser)
    {
        log.info("保存或更新后台用户信息: {}", systemUser);

        final boolean saved = this.systemUserServiceImpl.saveOrUpdate(systemUser);

        return saved ? Result.success() : Result.failure();
    }

    /**
     * 判断后台用户名是否可用
     * <p>
     * 该方法接受一个 String 类型的 username 参数，判断该用户名是否已存在
     * </p>
     *
     * @param username 后台用户名
     * @return 用户名是否可用
     */
    @Operation(summary = "判断后台用户名是否可用")
    @GetMapping("isUserNameAvailable")
    public Result<Boolean> isUsernameExists(@RequestParam final String username)
    {
        log.info("判断后台用户名是否可用: username={}", username);

        final LambdaQueryWrapper<SystemUser> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(SystemUser::getUsername, username);

        final boolean exists = this.systemUserServiceImpl.count(queryWrapper) > 0;

        return Result.success(!exists ? Boolean.TRUE : Boolean.FALSE);
    }

    /**
     * 根据ID删除后台用户信息
     * <p>
     * 该方法接受一个 Long 类型的 id 参数，删除对应的后台用户信息
     * </p>
     *
     * @param id 后台用户id
     * @return 操作结果
     */
    @DeleteMapping("deleteById")
    @Operation(summary = "根据ID删除后台用户信息")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        log.info("删除后台用户信息: id={}", id);

        final boolean removed = this.systemUserServiceImpl.removeById(id);

        return removed ? Result.success() : Result.failure();
    }

    /**
     * 根据ID修改后台用户状态
     * <p>
     * 该方法接受后台用户id和状态作为参数，更新对应后台用户的状态
     * </p>
     *
     * @param id     后台用户id
     * @param status 后台用户状态
     * @return 操作结果
     */
    @Operation(summary = "根据ID修改后台用户状态")
    @PostMapping("updateStatusByUserId")
    public Result<Void> updateStatusByUserId(@RequestParam final Long id, @RequestParam final BaseStatus status)
    {
        log.info("修改后台用户状态: id={}, status={}", id, status);

        final LambdaUpdateWrapper<SystemUser> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(SystemUser::getId, id)
                     .set(SystemUser::getStatus, status);

        final boolean updated = this.systemUserServiceImpl.update(updateWrapper);

        return updated ? Result.success() : Result.failure();
    }
}