package com.ovo307000.lease.web.admin.controller.apartment;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.FacilityInfo;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.service.impl.FacilityInfoServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@Tag(name = "配套管理")
@RequiredArgsConstructor
@RequestMapping("/admin/facility")
public class FacilityController
{
    private final FacilityInfoServiceImpl facilityInfoServiceImpl;

    @Operation(summary = "[根据类型]查询配套信息列表")
    @GetMapping("list")
    public Result<List<FacilityInfo>> listFacility(@RequestParam(required = false) final ItemType type)
    {
        log.info("依据类型查询配套信息列表: {}", type);

        final LambdaQueryWrapper<FacilityInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(type != null, FacilityInfo::getType, type);

        final List<FacilityInfo> facilityInfoList = this.facilityInfoServiceImpl.list(queryWrapper);

        return facilityInfoList.isEmpty() ? Result.fail(ResultCodeEnum.NO_FOUND) : Result.ok(facilityInfoList);
    }

    @Operation(summary = "新增或修改配套信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final FacilityInfo facilityInfo)
    {
        log.info("新增或修改配套信息: {}", facilityInfo);

        final boolean saved = this.facilityInfoServiceImpl.saveOrUpdate(facilityInfo);

        return saved ? Result.ok() : Result.fail(ResultCodeEnum.SAVE_FAILED);
    }

    @Operation(summary = "根据id删除配套信息")
    @DeleteMapping("deleteById")
    public Result<Void> removeFacilityById(@RequestParam final Long id)
    {
        log.info("根据id删除配套信息: {}", id);

        final boolean removed = this.facilityInfoServiceImpl.removeById(id);

        return removed ? Result.ok() : Result.fail(ResultCodeEnum.REMOVE_NOT_FOUND);
    }
}
