package com.ovo307000.lease.web.app.service;

public interface SmsService
{
        /**
     * 发送短信验证码
     *
     * @param phone 手机号
     * @return 是否发送成功
     */
    boolean sendCode(String phone);
}
