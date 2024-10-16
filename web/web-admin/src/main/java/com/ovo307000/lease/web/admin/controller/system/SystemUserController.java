package com.ovo307000.lease.web.admin.controller.system;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.SystemUser;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserItemVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserQueryVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;


@Tag(name = "后台用户信息管理")
@RestController
@RequestMapping("/admin/system/user")
public class SystemUserController
{

    @Operation(summary = "根据条件分页查询后台用户列表")
    @GetMapping("page")
    public Result<IPage<SystemUserItemVo>> page(@RequestParam final long current,
                                                @RequestParam final long size,
                                                final SystemUserQueryVo queryVo)
    {
        return Result.success();
    }

    @Operation(summary = "根据ID查询后台用户信息")
    @GetMapping("getById")
    public Result<SystemUserItemVo> getById(@RequestParam final Long id)
    {
        return Result.success();
    }

    @Operation(summary = "保存或更新后台用户信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final SystemUser systemUser)
    {
        return Result.success();
    }

    @Operation(summary = "判断后台用户名是否可用")
    @GetMapping("isUserNameAvailable")
    public Result<Boolean> isUsernameExists(@RequestParam final String username)
    {
        return Result.success();
    }

    @DeleteMapping("deleteById")
    @Operation(summary = "根据ID删除后台用户信息")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        return Result.success();
    }

    @Operation(summary = "根据ID修改后台用户状态")
    @PostMapping("updateStatusByUserId")
    public Result<Void> updateStatusByUserId(@RequestParam final Long id, @RequestParam final BaseStatus status)
    {
        return Result.success();
    }
}
