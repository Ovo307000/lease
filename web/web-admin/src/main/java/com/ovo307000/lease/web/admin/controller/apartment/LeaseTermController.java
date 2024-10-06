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

@Slf4j
@RestController
@Tag(name = "租期管理")
@RequiredArgsConstructor
@RequestMapping("/admin/term")
public class LeaseTermController
{
    private final LeaseTermServiceImpl leaseTermServiceImpl;

    @GetMapping("list")
    @Operation(summary = "查询全部租期列表")
    public Result<List<LeaseTerm>> listLeaseTerm()
    {
        log.info("查询全部未逻辑删除的租期列表");

        final List<LeaseTerm> list = this.leaseTermServiceImpl.list();

        return list.isEmpty() ? Result.fail(ResultCodeEnum.NO_FOUND) : Result.ok(list);
    }

    @PostMapping("saveOrUpdate")
    @Operation(summary = "保存或更新租期信息")
    public Result<Void> saveOrUpdate(@RequestBody final LeaseTerm leaseTerm)
    {
        log.info("保存或更新租期信息: {}", leaseTerm);

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

        return saveOrUpdate ? Result.ok() : Result.fail(ResultCodeEnum.NO_FOUND);
    }

    @DeleteMapping("deleteById")
    @Operation(summary = "根据ID删除租期")
    public Result<Void> deleteLeaseTermById(@RequestParam final Long id)
    {
        log.info("根据ID删除租期: {}", id);

        final boolean remove = this.leaseTermServiceImpl.removeById(id);

        return remove ? Result.ok() : Result.fail(ResultCodeEnum.NO_FOUND);
    }
}
