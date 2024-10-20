package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.web.admin.mapper.ViewAppointmentMapper;
import com.ovo307000.lease.web.admin.service.ViewAppointmentService;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentQueryVo;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【view_appointment(预约看房信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
@RequiredArgsConstructor
public class ViewAppointmentServiceImpl extends ServiceImpl<ViewAppointmentMapper, ViewAppointment>
        implements ViewAppointmentService
{
    private final ViewAppointmentMapper viewAppointmentMapper;

    @Override
    public IPage<AppointmentVo> pageAppointment(final Page<AppointmentVo> page, final AppointmentQueryVo queryVo)
    {
        return this.viewAppointmentMapper.pageAppointment(page, queryVo);
    }
}




