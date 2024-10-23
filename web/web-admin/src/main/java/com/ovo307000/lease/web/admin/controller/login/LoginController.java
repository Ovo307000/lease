package com.ovo307000.lease.web.admin.controller.login;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.web.admin.service.impl.LoginServiceImpl;
import com.ovo307000.lease.web.admin.vo.login.CaptchaVo;
import com.ovo307000.lease.web.admin.vo.login.LoginVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserInfoVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/admin")
@Tag(name = "后台管理系统登录管理")
@RestController("adminLoginController")
public class LoginController
{
    private final LoginServiceImpl adminLoginService;

    @Operation(summary = "获取图形验证码")
    @GetMapping("login/captcha")
    public Result<CaptchaVo> getCaptcha()
    {
        log.info("获取图形验证码");

        final CaptchaVo captchaVo = this.adminLoginService.getCaptcha();

        return Result.success(captchaVo);
    }

    @Operation(summary = "登录")
    @PostMapping("login")
    public Result<String> login(@RequestBody final LoginVo loginVo)
    {
        return Result.success();
    }

    @Operation(summary = "获取登陆用户个人信息")
    @GetMapping("info")
    public Result<SystemUserInfoVo> info()
    {
        return Result.success();
    }
}