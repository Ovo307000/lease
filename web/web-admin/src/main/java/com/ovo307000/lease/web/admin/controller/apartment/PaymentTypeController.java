package com.ovo307000.lease.web.admin.controller.apartment;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.PaymentType;
import com.ovo307000.lease.web.admin.service.impl.PaymentTypeServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "支付方式管理")
@RequestMapping("/admin/payment")
public class PaymentTypeController
{
    private final PaymentTypeServiceImpl paymentTypeServiceImpl;

    @Operation(summary = "查询全部支付方式列表")
    @GetMapping("list")
    public Result<List<PaymentType>> listPaymentType()
    {
        log.info("查询全部未逻辑删除的支付方式列表");

        final List<PaymentType> paymentTypes = this.paymentTypeServiceImpl.listNotDeleted();

        return paymentTypes.isEmpty() ? Result.ok() : Result.ok(paymentTypes);
    }

    @Operation(summary = "保存或更新支付方式")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdatePaymentType(@RequestBody final PaymentType paymentType)
    {

        log.info("保存或更新支付方式: {}", paymentType);

        // TODO 2024/10/6 18:38 @solow 目前似乎日期的自动填充有问题，需要手动填充
        if (paymentType.getId() == null)
        {
            paymentType.setUpdateTime(new Date());
            paymentType.setCreateTime(new Date());
        }
        else
        {
            paymentType.setUpdateTime(new Date());
        }

        return this.paymentTypeServiceImpl.saveOrUpdate(paymentType) ? Result.ok() : Result.fail();
    }

    @Operation(summary = "根据ID删除支付方式")
    @DeleteMapping("deleteById")
    public Result<Void> deletePaymentById(@RequestParam final Long id)
    {
        return this.paymentTypeServiceImpl.removeById(id) ? Result.ok() : Result.fail();
    }
}
