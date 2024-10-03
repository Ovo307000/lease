package com.ovo307000.lease.web.admin.controller.user;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.UserInfo;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.admin.vo.user.UserInfoQueryVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

@Tag(name = "用户信息管理")
@RestController
@RequestMapping("/admin/user")
public class UserInfoController
{

    @Operation(summary = "分页查询用户信息")
    @GetMapping("page")
    public Result<IPage<UserInfo>> pageUserInfo(@RequestParam final long current,
                                                @RequestParam final long size,
                                                final UserInfoQueryVo queryVo)
    {
        return Result.ok();
    }

    @Operation(summary = "根据用户id更新账号状态")
    @PostMapping("updateStatusById")
    public Result<Void> updateStatusById(@RequestParam final Long id, @RequestParam final BaseStatus status)
    {
        return Result.ok();
    }
}
