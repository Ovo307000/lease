package com.ovo307000.lease.module.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.ovo307000.lease.module.enums.AppointmentStatus;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serial;
import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Schema(description = "预约看房信息表")
@TableName(value = "view_appointment")
@Data
public class ViewAppointment extends BaseEntity
{

    @Serial
    private static final long serialVersionUID = 1L;

    @Schema(description = "用户id")
    @TableField(value = "user_id")
    private Long userId;

    @Schema(description = "用户姓名")
    @TableField(value = "name")
    private String name;

    @Schema(description = "用户手机号码")
    @TableField(value = "phone")
    private String phone;

    @Schema(description = "公寓id")
    @TableField(value = "apartment_id")
    private Long apartmentId;

    @Schema(description = "预约时间")
    @TableField(value = "appointment_time")
    private Date appointmentTime;

    @Schema(description = "备注信息")
    @TableField(value = "additional_info")
    private String additionalInfo;

    @Schema(description = "预约状态")
    @TableField(value = "appointment_status")
    private AppointmentStatus appointmentStatus;
}