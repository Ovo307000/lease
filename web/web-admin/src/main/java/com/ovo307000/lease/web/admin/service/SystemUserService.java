package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.SystemUser;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserInfoVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserItemVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserQueryVo;

/**
 * @author liubo
 * @description 针对表【system_user(员工信息表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface SystemUserService extends IService<SystemUser>
{
    /**
     * 根据条件分页查询后台用户列表
     *
     * @param page       分页对象
     * @param queryVo    查询条件
     * @return IPage<SystemUserItemVo> 分页结果
     */
    IPage<SystemUserItemVo> pageSystemUser(Page<SystemUserItemVo> page, SystemUserQueryVo queryVo);

    /**
     * 根据id查询后台用户信息
     *
     * @param id 后台用户id
     * @return SystemUserItemVo
     */
    SystemUserItemVo getSystemUserItemVoById(Long id);

    /**
     * 获取当前登录用户信息
     *
     * @return SystemUserInfoVo
     */
    SystemUserInfoVo getLoggedUserInfoByToken(String token);
}
