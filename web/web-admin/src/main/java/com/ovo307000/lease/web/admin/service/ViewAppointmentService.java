package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentQueryVo;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentVo;

/**
 * @author liubo
 * @description 针对表【view_appointment(预约看房信息表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface ViewAppointmentService extends IService<ViewAppointment>
{

    /**
     * 分页查询预约信息
     * @param page 分页对象
     * @param queryVo 查询条件
     * @return 分页查询结果
     */
    IPage<AppointmentVo> pageAppointment(Page<AppointmentVo> page, AppointmentQueryVo queryVo);
}
