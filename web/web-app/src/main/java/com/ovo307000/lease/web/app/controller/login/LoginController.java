package com.ovo307000.lease.web.app.controller.login;


import com.ovo307000.lease.common.properties.auth.CodeProperties;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.service.TwilioService;
import com.ovo307000.lease.common.utils.CodeGenerator;
import com.ovo307000.lease.web.app.vo.user.LoginVo;
import com.ovo307000.lease.web.app.vo.user.UserInfoVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

@Tag(name = "登录管理")
@RestController
@RequestMapping("/app/")
public class LoginController
{
    private final TwilioService  twilioService;
    private final CodeProperties codeProperties;

    public LoginController(final TwilioService twilioService, final CodeProperties codeProperties)
    {
        this.twilioService  = twilioService;
        this.codeProperties = codeProperties;
    }

    @GetMapping("login/getCode")
    @Operation(summary = "获取短信验证码")
    public Result<Void> getCode(@RequestParam final String phone)
    {
        this.twilioService.notifyUser(phone, CodeGenerator.generateCode(this.codeProperties.getLength()));

        return Result.success();
    }

    @PostMapping("login")
    @Operation(summary = "登录")
    public Result<String> login(@RequestBody final LoginVo loginVo)
    {
        return Result.success();
    }

    @GetMapping("info")
    @Operation(summary = "获取登录用户信息")
    public Result<UserInfoVo> info()
    {
        return Result.success();
    }
}

