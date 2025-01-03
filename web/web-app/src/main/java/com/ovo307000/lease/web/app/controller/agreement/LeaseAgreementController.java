package com.ovo307000.lease.web.app.controller.agreement;

import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.LeaseAgreement;
import com.ovo307000.lease.module.enums.LeaseStatus;
import com.ovo307000.lease.web.app.vo.agreement.AgreementDetailVo;
import com.ovo307000.lease.web.app.vo.agreement.AgreementItemVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/app/agreement")
@Tag(name = "租约信息")
public class LeaseAgreementController
{

    @Operation(summary = "获取个人租约基本信息列表")
    @GetMapping("listItem")
    public Result<List<AgreementItemVo>> listItem()
    {
        return Result.success();
    }

    @Operation(summary = "根据id获取租约详细信息")
    @GetMapping("getDetailById")
    public Result<AgreementDetailVo> getDetailById(@RequestParam final Long id)
    {
        return Result.success();
    }

    @Operation(summary = "根据id更新租约状态", description = "用于确认租约和提前退租")
    @PostMapping("updateStatusById")
    public Result<Void> updateStatusById(@RequestParam final Long id, @RequestParam final LeaseStatus leaseStatus)
    {
        return Result.success();
    }

    @Operation(summary = "保存或更新租约", description = "用于续约")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final LeaseAgreement leaseAgreement)
    {
        return Result.success();
    }

}
