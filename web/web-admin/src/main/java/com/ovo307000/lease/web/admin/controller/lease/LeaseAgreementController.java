package com.ovo307000.lease.web.admin.controller.lease;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.LeaseAgreement;
import com.ovo307000.lease.module.enums.LeaseStatus;
import com.ovo307000.lease.web.admin.service.impl.LeaseAgreementServiceImpl;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementQueryVo;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


@Slf4j
@RestController
@Tag(name = "租约管理")
@RequiredArgsConstructor
@RequestMapping("/admin/agreement")
public class LeaseAgreementController
{

    private final LeaseAgreementServiceImpl leaseAgreementServiceImpl;

    @Operation(summary = "保存或修改租约信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final LeaseAgreement leaseAgreement)
    {
        log.info("保存或更新租约信息: {}", leaseAgreement);

        final boolean saved = this.leaseAgreementServiceImpl.saveOrUpdate(leaseAgreement);

        return saved ? Result.success() : Result.failure();
    }

    @Operation(summary = "根据条件分页查询租约列表")
    @GetMapping("page")
    public Result<IPage<AgreementVo>> page(@RequestParam final long current,
                                           @RequestParam final long size,
                                           final AgreementQueryVo queryVo)
    {
        log.info("分页查询租约信息: {}", queryVo);

        final Page<AgreementVo> page = new Page<>(current, size);
        final IPage<AgreementVo> agreementVoIPage = this.leaseAgreementServiceImpl.pageAgreement(page, queryVo);
    }

    @Operation(summary = "根据id查询租约信息")
    @GetMapping(name = "getById")
    public Result<AgreementVo> getById(@RequestParam final Long id)
    {
        return Result.success();
    }

    @Operation(summary = "根据id删除租约信息")
    @DeleteMapping("removeById")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        return Result.success();
    }

    @Operation(summary = "根据id更新租约状态")
    @PostMapping("updateStatusById")
    public Result<Void> updateStatusById(@RequestParam final Long id, @RequestParam final LeaseStatus status)
    {
        return Result.success();
    }

}

