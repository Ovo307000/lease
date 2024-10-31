package com.ovo307000.lease.common.service;

@FunctionalInterface
public interface NotificationService extends Service
{
    /**
     * 发送短信验证码
     *
     * @param to          手机号
     * @param messageBody 消息内容
     * @return 是否发送成功
     */
    boolean notifyUser(String to, String messageBody);
}
