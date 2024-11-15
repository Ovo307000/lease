package com.ovo307000.lease.web.app.service;

import com.ovo307000.lease.web.app.vo.user.LoginVo;

/**
 * 登录服务
 */
public interface LoginService
{
    /**
     * 登录
     *
     * @param loginVo 登录信息
     * @return token
     */
    String login(LoginVo loginVo);
}
