package com.ovo307000.lease.web.admin.controller.lease;


import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.ViewAppointment;
import com.ovo307000.lease.module.enums.AppointmentStatus;
import com.ovo307000.lease.web.admin.service.impl.ViewAppointmentServiceImpl;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentQueryVo;
import com.ovo307000.lease.web.admin.vo.appointment.AppointmentVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "预约看房管理")
@RequestMapping("/admin/appointment")
public class ViewAppointmentController
{
    private final ViewAppointmentServiceImpl viewAppointmentServiceImpl;

    /**
     * 分页查询预约信息
     * <p>
     * 该方法根据分页参数和查询条件，分页查询预约看房信息
     * </p>
     *
     * @param current 当前页码
     * @param size    每页显示记录数
     * @param queryVo 查询条件封装对象，包括预约公寓所在省、市、区、公寓的ID，用户姓名和手机号码等信息
     * @return 返回包含预约看房信息的分页结果
     * @see AppointmentQueryVo 封装了分页查询的条件
     * @see AppointmentVo 封装了查询结果的详细信息
     */
    @Operation(summary = "分页查询预约信息")
    @GetMapping("page")
    public Result<IPage<AppointmentVo>> page(@RequestParam final long current,
                                             @RequestParam final long size,
                                             final AppointmentQueryVo queryVo)
    {
        final Page<AppointmentVo> page = new Page<>(current, size);

        final IPage<AppointmentVo> appointmentVoIPage = this.viewAppointmentServiceImpl.pageAppointment(page, queryVo);

        return Result.success(appointmentVoIPage);
    }

    /**
     * 根据id更新预约状态
     * <p>
     * 该方法接收一个预约的id和要更新的状态，通过调用服务层更新数据库中的预约状态，
     * 并返回更新结果。
     * </p>
     *
     * @param id     要更新的预约的唯一标识符
     * @param status 要更新为的预约状态 {@link AppointmentStatus}
     * @return 返回一个包含更新操作结果的 {@link Result} 对象，如果更新成功，则返回成功结果，
     * 否则返回失败结果。
     * @throws IllegalArgumentException 如果提供的id或status为空或无效
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
