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

/**
 * FacilityController 是一个 REST 控制器类，提供配套信息的管理功能。
 * 该类使用 @RestController 注解标记，并映射到 "/admin/facility" 路径。
 */
@Slf4j
@RestController
@Tag(name = "配套管理")
@RequiredArgsConstructor
@RequestMapping("/admin/facility")
public class FacilityController
{
    // 注入 FacilityInfoServiceImpl，用于处理配套信息的业务逻辑
    private final FacilityInfoServiceImpl facilityInfoServiceImpl;

    /**
     * 根据类型查询配套信息列表。
     *
     * @param type 配套信息的类型，可选参数。
     * @return 包含配套信息列表的 Result 对象。
     */
    @Operation(summary = "[根据类型]查询配套信息列表")
    @GetMapping("list")
    public Result<List<FacilityInfo>> listFacility(@RequestParam(required = false) final ItemType type)
    {
        // 记录查询操作的日志
        log.info("依据类型查询配套信息列表: {}", type);

        // 创建查询条件包装器
        final LambdaQueryWrapper<FacilityInfo> queryWrapper = new LambdaQueryWrapper<>();
        // 如果类型不为空，则添加查询条件
        queryWrapper.eq(type != null, FacilityInfo::getType, type);

        // 查询配套信息列表
        final List<FacilityInfo> facilityInfoList = this.facilityInfoServiceImpl.list(queryWrapper);

        // 返回查询结果
        return facilityInfoList.isEmpty() ? Result.failure(ResultCodeEnum.NO_FOUND) : Result.success(facilityInfoList);
    }

    /**
     * 新增或修改配套信息。
     *
     * @param facilityInfo 要保存或更新的配套信息对象。
     * @return 表示操作结果的 Result 对象。
     */
    @Operation(summary = "新增或修改配套信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final FacilityInfo facilityInfo)
    {
        // 记录保存或更新操作的日志
        log.info("新增或修改配套信息: {}", facilityInfo);

        // 执行保存或更新操作
        final boolean saved = this.facilityInfoServiceImpl.saveOrUpdate(facilityInfo);

        // 返回操作结果
        return saved ? Result.success() : Result.failure(ResultCodeEnum.SAVE_FAILED);
    }

    /**
     * 根据 ID 删除配套信息。
     *
     * @param id 要删除的配套信息的 ID。
     * @return 表示操作结果的 Result 对象。
     */
    @Operation(summary = "根据id删除配套信息")
    @DeleteMapping("deleteById")
    public Result<Void> removeFacilityById(@RequestParam final Long id)
    {
        // 记录删除操作的日志
        log.info("根据id删除配套信息: {}", id);

        // 执行删除操作
        final boolean removed = this.facilityInfoServiceImpl.removeById(id);

        // 返回操作结果
        return removed ? Result.success() : Result.failure(ResultCodeEnum.REMOVE_NOT_FOUND);
    }
}