package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.module.entity.SystemUser;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserItemVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserQueryVo;
import org.apache.ibatis.annotations.Param;

/**
 * @author liubo
 * @description 针对表【system_user(员工信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.SystemUser
 */
public interface SystemUserMapper extends BaseMapper<SystemUser>
{
    /**
     * 分页查询后台用户列表
     *
     * @param page   分页对象
     * @param queryVo 查询条件
     * @return IPage<SystemUserItemVo> 分页结果
     */
    IPage<SystemUserItemVo> pageSystemUser(@Param("page") Page<SystemUserItemVo> page, @Param("queryVo")
    SystemUserQueryVo queryVo);
}
