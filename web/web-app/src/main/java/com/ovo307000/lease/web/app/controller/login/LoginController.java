package com.ovo307000.lease.web.app.controller.login;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.web.app.service.impl.LoginServiceImpl;
import com.ovo307000.lease.web.app.service.impl.SmsServiceImpl;
import com.ovo307000.lease.web.app.vo.user.LoginVo;
import com.ovo307000.lease.web.app.vo.user.UserInfoVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@Slf4j
@RestController
@Tag(name = "登录管理")
@RequiredArgsConstructor
@RequestMapping("/app/")
public class LoginController
{
    private final LoginServiceImpl loginServiceImpl;
    private final SmsServiceImpl   smsServiceImpl;

    @GetMapping("login/getCode")
    @Operation(summary = "获取短信验证码")
    public Result<Void> getCode(@RequestParam final String phone)
    {
        log.info("Get code for phone: {}", phone);

        this.smsServiceImpl.sendCodeAsync(phone)
                           .join();

        return Result.success();
    }

    @PostMapping("login")
    @Operation(summary = "登录")
    public Result<String> login(@RequestBody final LoginVo loginVo)
    {
        log.info("Login with phone: {}", Objects.requireNonNull(loginVo.getPhone(), "Phone must not be null"));

        return this.loginServiceImpl.login(loginVo) ? Result.success() : Result.failure();
    }

    @GetMapping("info")
    @Operation(summary = "获取登录用户信息")
    public Result<UserInfoVo> info()
    {
        return Result.success();
    }
}

