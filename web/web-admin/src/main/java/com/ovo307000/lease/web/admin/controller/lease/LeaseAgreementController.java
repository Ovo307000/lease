package com.ovo307000.lease.web.admin.controller.lease;


import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
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

    /**
     * 保存或修改租约信息
     * <p>
     * 该方法接受一个 LeaseAgreement 对象作为请求体，用于保存或修改租约信息。
     *
     * @param leaseAgreement 租约信息实体
     * @return Result 对象，表示操作结果
     */
    @Operation(summary = "保存或修改租约信息")

    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final LeaseAgreement leaseAgreement)
    {
        log.info("保存或更新租约信息: {}", leaseAgreement);

        final boolean saved = this.leaseAgreementServiceImpl.saveOrUpdate(leaseAgreement);

        return saved ? Result.success() : Result.failure();
    }

    /**
     * 根据条件分页查询租约列表
     * <p>
     * 该方法接受一个分页对象和一个查询条件对象作为参数，返回一个IPage对象，包含了当前页的租约信息和总记录数
     * </p>
     *
     * @param current 当前页码
     * @param size    页大小
     * @param queryVo 查询条件对象
     * @return 返回包含AgreementVo对象的分页结果
     */
    @Operation(summary = "根据条件分页查询租约列表")
    @GetMapping("page")
    public Result<IPage<AgreementVo>> page(@RequestParam final long current,
                                           @RequestParam final long size,
                                           final AgreementQueryVo queryVo)
    {
        log.info("分页查询租约信息: {}", queryVo);

        final Page<AgreementVo>  page             = new Page<>(current, size);
        final IPage<AgreementVo> agreementVoIPage = this.leaseAgreementServiceImpl.pageAgreement(page, queryVo);

        return Result.success(agreementVoIPage);
    }

    /**
     * 根据id查询租约信息
     *
     * @param id 租约id
     * @return 租约信息
     */
    @Operation(summary = "根据id查询租约信息")
    @GetMapping(name = "getById")
    public Result<AgreementVo> getById(@RequestParam final Long id)
    {
        log.info("查询租约信息: {}", id);


        final AgreementVo agreement = this.leaseAgreementServiceImpl.getAgreementById(id);

        return Result.success(agreement);
    }

    /**
     * 根据id删除租约信息
     * <p>
     * 该方法接受一个Long类型的id参数，删除对应的租约信息
     * </p>
     *
     * @param id 租约id
     * @return 操作结果
     */
    @Operation(summary = "根据id删除租约信息")
    @DeleteMapping("removeById")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        log.info("根据id删除租约信息: {}", id);

        final boolean removed = this.leaseAgreementServiceImpl.removeById(id);

        return removed ? Result.success() : Result.failure();
    }

    /**
     * 根据id更新租约状态
     * <p>
     * 该方法接受一个Long类型的id参数和一个LeaseStatus类型的status参数，更新对应的租约信息的状态
     * </p>
     *
     * @param id     租约id
     * @param status 租约状态
     * @return 操作结果
     */
    @Operation(summary = "根据id更新租约状态")
    @PostMapping("updateStatusById")
    public Result<Void> updateStatusById(@RequestParam final Long id, @RequestParam final LeaseStatus status)
    {
        log.info("根据id更新租约状态: id={}, status={}", id, status);

        final LambdaUpdateWrapper<LeaseAgreement> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(LeaseAgreement::getId, id)
                     .set(LeaseAgreement::getStatus, status);

        final boolean updated = this.leaseAgreementServiceImpl.update(updateWrapper);

        return updated ? Result.success() : Result.failure();
    }
}
