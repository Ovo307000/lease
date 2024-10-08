package com.ovo307000.lease.web.admin.controller.apartment;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.FeeKey;
import com.ovo307000.lease.module.entity.FeeValue;
import com.ovo307000.lease.web.admin.mapper.FeeValueMapper;
import com.ovo307000.lease.web.admin.service.impl.FeeKeyServiceImpl;
import com.ovo307000.lease.web.admin.service.impl.FeeValueServiceImpl;
import com.ovo307000.lease.web.admin.vo.fee.FeeKeyVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "房间杂费管理")
@RequestMapping("/admin/fee")
public class FeeController
{

    private final FeeKeyServiceImpl   feeKeyServiceImpl;
    private final FeeValueMapper      feeValueMapper;
    private final FeeValueServiceImpl feeValueServiceImpl;

    @Operation(summary = "保存或更新杂费名称")
    @PostMapping("key/saveOrUpdate")
    public Result<Void> saveOrUpdateFeeKey(@RequestBody final FeeKey feeKey)
    {
        log.info("新增或更新杂费名称: {}", feeKey);

        final boolean saved = this.feeKeyServiceImpl.saveOrUpdate(feeKey);

        return saved ? Result.ok() : Result.fail(ResultCodeEnum.SAVE_FAILED);
    }

    @Operation(summary = "保存或更新杂费值")
    @PostMapping("value/saveOrUpdate")
    public Result<Void> saveOrUpdateFeeValue(@RequestBody final FeeValue feeValue)
    {
        log.info("新增或更新杂费值: {}", feeValue);

        final boolean saved = this.feeValueServiceImpl.saveOrUpdate(feeValue);

        return saved ? Result.ok() : Result.fail(ResultCodeEnum.SAVE_FAILED);
    }


    @Operation(summary = "查询全部杂费名称和杂费值列表")
    @GetMapping("list")
    public Result<List<FeeKeyVo>> feeInfoList()
    {
        log.info("查询全部杂费名称和杂费值列表");

        final List<FeeKeyVo> feeKeyVos = this.feeKeyServiceImpl.listFeeKeyVo();

        return feeKeyVos.isEmpty() ? Result.fail(ResultCodeEnum.NO_FOUND) : Result.ok(feeKeyVos);
    }

    @Operation(summary = "根据id删除杂费名称")
    @DeleteMapping("key/deleteById")
    public Result<Void> deleteFeeKeyById(@RequestParam final Long feeKeyId)
    {
        log.info("删除杂费名称: {}", feeKeyId);

        final boolean removed = this.feeKeyServiceImpl.removeById(feeKeyId);

        return removed ? Result.ok() : Result.fail(ResultCodeEnum.DELETE_FAILED);
    }

    @Operation(summary = "根据id删除杂费值")
    @DeleteMapping("value/deleteById")
    public Result<Void> deleteFeeValueById(@RequestParam final Long id)
    {
        log.info("删除杂费值: {}", id);

        final boolean removed = this.feeValueMapper.deleteById(id) > 0;

        return removed ? Result.ok() : Result.fail(ResultCodeEnum.DELETE_FAILED);
    }
}
