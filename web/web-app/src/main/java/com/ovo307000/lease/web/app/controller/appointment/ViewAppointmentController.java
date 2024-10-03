package com.ovo307000.lease.web.app.controller.appointment;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.web.app.vo.appointment.AppointmentDetailVo;
import com.ovo307000.lease.web.app.vo.appointment.AppointmentItemVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name = "看房预约信息")
@RestController
@RequestMapping("/app/appointment")
public class ViewAppointmentController
{

    @Operation(summary = "保存或更新看房预约")
    @PostMapping("/saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final ViewAppointment viewAppointment)
    {
        return Result.ok();
    }

    @Operation(summary = "查询个人预约看房列表")
    @GetMapping("listItem")
    public Result<List<AppointmentItemVo>> listItem()
    {
        return Result.ok();
    }

    @GetMapping("getDetailById")
    @Operation(summary = "根据ID查询预约详情信息")
    public Result<AppointmentDetailVo> getDetailById(final Long id)
    {
        return Result.ok();
    }

}

