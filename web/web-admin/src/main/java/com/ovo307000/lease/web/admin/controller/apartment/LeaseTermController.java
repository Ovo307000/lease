package com.ovo307000.lease.web.admin.controller.apartment;

import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.LeaseTerm;
import com.ovo307000.lease.web.admin.service.impl.LeaseTermServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * 租期管理控制器
 */
@Slf4j
@RestController
@Tag(name = "租期管理")
@RequiredArgsConstructor
@RequestMapping("/admin/term")
public class LeaseTermController
{
    private final LeaseTermServiceImpl leaseTermServiceImpl;

    /**
     * 查询全部租期列表
     *
     * @return 全部未逻辑删除的租期列表
     */
    @GetMapping("list")
    @Operation(summary = "查询全部租期列表")
    public Result<List<LeaseTerm>> listLeaseTerm()
    {
        log.info("查询全部未逻辑删除的租期列表");

        final List<LeaseTerm> list = this.leaseTermServiceImpl.list();

        return list.isEmpty() ? Result.failure(ResultCodeEnum.NO_FOUND) : Result.success(list);
    }

    /**
     * 保存或更新租期信息
     *
     * @param leaseTerm 租期实体
     * @return 保存或更新结果
     */
    @PostMapping("saveOrUpdate")
    @Operation(summary = "保存或更新租期信息")
    public Result<Void> saveOrUpdate(@RequestBody final LeaseTerm leaseTerm)
    {
        log.info("保存或更新租期信息: {}", leaseTerm);

        // TODO 2024/10/6 23:20 @solow 目前似乎日期的自动填充有问题，需要手动填充
        if (leaseTerm.getId() == null)
        {
            leaseTerm.setCreateTime(new Date());
            leaseTerm.setUpdateTime(new Date());
        }
        else
        {
            leaseTerm.setUpdateTime(new Date());
        }

        final boolean saveOrUpdate = this.leaseTermServiceImpl.saveOrUpdate(leaseTerm);

        return saveOrUpdate ? Result.success() : Result.failure(ResultCodeEnum.NO_FOUND);
    }

    /**
     * 根据ID删除租期
     *
     * @param id 租期ID
     * @return 删除结果
     */
    @DeleteMapping("deleteById")
    @Operation(summary = "根据ID删除租期")
    public Result<Void> deleteLeaseTermById(@RequestParam final Long id)
    {
        log.info("根据ID删除租期: {}", id);

        final boolean remove = this.leaseTermServiceImpl.removeById(id);

        return remove ? Result.success() : Result.failure(ResultCodeEnum.NO_FOUND);
    }
}
