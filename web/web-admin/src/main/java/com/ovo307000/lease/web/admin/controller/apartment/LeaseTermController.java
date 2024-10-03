package com.ovo307000.lease.web.admin.controller.apartment;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.LeaseTerm;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name = "租期管理")
@RequestMapping("/admin/term")
@RestController
public class LeaseTermController
{

    @GetMapping("list")
    @Operation(summary = "查询全部租期列表")
    public Result<List<LeaseTerm>> listLeaseTerm()
    {
        return Result.ok();
    }

    @PostMapping("saveOrUpdate")
    @Operation(summary = "保存或更新租期信息")
    public Result<Void> saveOrUpdate(@RequestBody final LeaseTerm leaseTerm)
    {
        return Result.ok();
    }

    @DeleteMapping("deleteById")
    @Operation(summary = "根据ID删除租期")
    public Result<Void> deleteLeaseTermById(@RequestParam final Long id)
    {
        return Result.ok();
    }
}
