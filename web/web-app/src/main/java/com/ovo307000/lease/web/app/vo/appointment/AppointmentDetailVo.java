package com.ovo307000.lease.web.app.vo.appointment;

import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.web.app.vo.apartment.ApartmentItemVo;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;


@EqualsAndHashCode(callSuper = true)
@Data
@Schema(description = "APP端预约看房详情")
public class AppointmentDetailVo extends ViewAppointment
{

    @Schema(description = "公寓基本信息")
    private ApartmentItemVo apartmentItemVo;
}
