package com.ovo307000.lease.web.admin.controller.lease;


import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.module.enums.AppointmentStatus;
import com.ovo307000.lease.web.admin.service.impl.ViewAppointmentServiceImpl;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentQueryVo;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@Tag(name = "预约看房管理")
@RequestMapping("/admin/appointment")
@RestController
public class ViewAppointmentController
{
    private final ViewAppointmentServiceImpl viewAppointmentServiceImpl;

    public ViewAppointmentController(final ViewAppointmentServiceImpl viewAppointmentServiceImpl)
    {
        this.viewAppointmentServiceImpl = viewAppointmentServiceImpl;
    }

    /**
     * 分页查询预约信息
     *
     * @param current 当前页
     * @param size    页大小
     * @param queryVo 查询条件
     * @return 分页查询结果
     */
    @Operation(summary = "分页查询预约信息")
    @GetMapping("page")
    public Result<IPage<AppointmentVo>> page(@RequestParam final long current,
                                             @RequestParam final long size,
                                             final AppointmentQueryVo queryVo)
    {
        return Result.success();
    }

    /**
     * 根据id更新预约状态
     * <p>
     * 该方法根据id和status来更新对应的预约状态
     * </p>
     *
     * @param id     预约id
     * @param status 预约状态
     * @return 操作结果
     */
    @Operation(summary = "根据id更新预约状态")
    @PostMapping("updateStatusById")
    public Result<Void> updateStatusById(@RequestParam final Long id, @RequestParam final AppointmentStatus status)
    {
        log.info("根据id更新预约状态: id={}, status={}", id, status);

        final LambdaUpdateWrapper<ViewAppointment> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(ViewAppointment::getId, id)
                     .set(ViewAppointment::getAppointmentStatus, status);

        final boolean updated = this.viewAppointmentServiceImpl.update(updateWrapper);

        return updated ? Result.success() : Result.failure();
    }
}
