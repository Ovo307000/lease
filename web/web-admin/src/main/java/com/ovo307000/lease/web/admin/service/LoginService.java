package com.ovo307000.lease.web.admin.service;

import com.ovo307000.lease.web.admin.vo.login.CaptchaVo;

public interface LoginService
{
    /**
     * 获取图形验证码
     *
     * @return CaptchaVo 图形验证码
     */
    CaptchaVo getCaptcha();
}
