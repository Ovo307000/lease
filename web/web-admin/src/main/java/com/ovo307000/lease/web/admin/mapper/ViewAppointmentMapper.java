package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentQueryVo;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentVo;
import org.apache.ibatis.annotations.Param;

/**
 * @author liubo
 * @description 针对表【view_appointment(预约看房信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.ViewAppointment
 */
public interface ViewAppointmentMapper extends BaseMapper<ViewAppointment>
{

    /**
     * 分页查询预约看房信息
     *
     * @param page    分页对象，包含分页大小和当前页码等信息
     * @param queryVo 查询条件对象，包含预约公寓所在省、市、区，公寓ID，预约用户姓名和手机号码等筛选条件
     * @return 分页查询结果，包含预约看房信息的分页数据
     */
    IPage<AppointmentVo> pageAppointment(@Param("page") Page<AppointmentVo> page, @Param("queryVo")
    AppointmentQueryVo queryVo);
}




