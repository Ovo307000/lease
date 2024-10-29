package com.ovo307000.lease.web.app.controller.payment;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.PaymentType;
import com.ovo307000.lease.web.app.service.impl.PaymentTypeServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 支付方式控制器
 * 提供获取支付方式列表的接口
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "支付方式接口")
@RequestMapping("/app/payment")
public class PaymentTypeController
{
    private final PaymentTypeServiceImpl paymentTypeServiceImpl;

    /**
     * 根据房间id获取可选支付方式列表
     *
     * @param id 房间id
     * @return 包含支付方式列表的结果对象
     */
    @Operation(summary = "根据房间id获取可选支付方式列表")
    @GetMapping("listByRoomId")
    public Result<List<PaymentType>> list(@RequestParam final Long id)
    {
        log.info("根据房间id获取可选支付方式列表: id={}", id);

        final LambdaQueryWrapper<PaymentType> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(PaymentType::getId, id);

        final List<PaymentType> paymentTypeList = this.paymentTypeServiceImpl.list(queryWrapper);

        return Result.success(paymentTypeList);
    }

    /**
     * 获取全部支付方式列表
     *
     * @return 包含支付方式列表的结果对象
     */
    @Operation(summary = "获取全部支付方式列表")
    @GetMapping("list")
    public Result<List<PaymentType>> list()
    {
        log.info("获取全部支付方式列表");

        final List<PaymentType> paymentTypeList = this.paymentTypeServiceImpl.list();

        return Result.success(paymentTypeList);
    }
}