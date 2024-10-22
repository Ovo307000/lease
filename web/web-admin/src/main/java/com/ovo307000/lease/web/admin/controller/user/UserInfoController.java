package com.ovo307000.lease.web.admin.controller.user;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.UserInfo;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.admin.service.impl.UserInfoServiceImpl;
import com.ovo307000.lease.web.admin.vo.user.UserInfoQueryVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

/**
 * 用户信息管理控制器
 * 提供用户信息的保存、更新、删除和查询等操作
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "用户信息管理")
@RequestMapping("/admin/user")
public class UserInfoController
{
    private final UserInfoServiceImpl userInfoServiceImpl;

    /**
     * 分页查询用户信息
     * <p>
     * 该方法接受当前页码、页大小和查询条件对象作为参数，返回一个包含用户信息的分页结果
     * </p>
     *
     * @param current 当前页码
     * @param size    页大小
     * @param queryVo 查询条件对象
     * @return 包含用户信息的分页结果
     */
    @Operation(summary = "分页查询用户信息")
    @GetMapping("page")
    public Result<IPage<UserInfo>> pageUserInfo(@RequestParam final long current,
                                                @RequestParam final long size,
                                                final UserInfoQueryVo queryVo)
    {
        log.info("分页查询用户信息: current={}, size={}, queryVo={}", current, size, queryVo);

        final Page<UserInfo> page = new Page<>(current, size);

        final LambdaQueryWrapper<UserInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(queryVo.getPhone() != null, UserInfo::getPhone, queryVo.getPhone())
                    .eq(queryVo.getStatus() != null, UserInfo::getStatus, queryVo.getStatus());

        final IPage<UserInfo> userInfoIPage = this.userInfoServiceImpl.page(page, queryWrapper);

        return Result.success(userInfoIPage);
    }

    /**
     * 根据用户id更新账号状态
     * <p>
     * 该方法接受用户id和状态作为参数，更新对应用户的账号状态
     * </p>
     *
     * @param id     用户id
     * @param status 账号状态
     * @return 操作结果
     */
    @Operation(summary = "根据用户id更新账号状态")
    @PostMapping("updateStatusById")
    public Result<Void> updateStatusById(@RequestParam final Long id, @RequestParam final BaseStatus status)
    {
        log.info("更新用户状态: id={}, status={}", id, status);

        final LambdaUpdateWrapper<UserInfo> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(UserInfo::getId, id)
                     .set(UserInfo::getStatus, status);

        final boolean updated = this.userInfoServiceImpl.update(updateWrapper);

        return updated ? Result.success() : Result.failure();
    }
}