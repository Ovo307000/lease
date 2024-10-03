package com.ovo307000.lease.web.admin.controller.apartment;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.FacilityInfo;
import com.ovo307000.lease.module.enums.ItemType;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Tag(name = "配套管理")
@RestController
@RequestMapping("/admin/facility")
public class FacilityController
{

    @Operation(summary = "[根据类型]查询配套信息列表")
    @GetMapping("list")
    public Result<List<FacilityInfo>> listFacility(@RequestParam(required = false) final ItemType type)
    {
        return Result.ok();
    }

    @Operation(summary = "新增或修改配套信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final FacilityInfo facilityInfo)
    {
        return Result.ok();
    }

    @Operation(summary = "根据id删除配套信息")
    @DeleteMapping("deleteById")
    public Result<Void> removeFacilityById(@RequestParam final Long id)
    {
        return Result.ok();
    }

}
