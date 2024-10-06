package com.ovo307000.lease.web.admin.controller.apartment;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.LabelInfo;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.service.impl.LabelInfoServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 标签管理控制器
 * <p>
 * 该控制器提供标签管理相关的API，包括标签的查询、新增、修改和删除操作
 * </p>
 */
@Slf4j
@RestController
@Tag(name = "标签管理")
@RequiredArgsConstructor
@RequestMapping("/admin/label")
public class LabelController
{

    /**
     * 标签信息服务实现的实例
     */
    private final LabelInfoServiceImpl labelInfoServiceImpl;

    /**
     * 根据类型查询标签列表
     * <p>
     * 该方法支持根据标签类型查询标签信息，如果未指定类型，则查询所有类型的标签
     * </p>
     *
     * @param type 标签类型，可选参数
     * @return 标签列表，如果列表为空则返回失败结果
     */
    @Operation(summary = "（根据类型）查询标签列表")
    @GetMapping("list")
    public Result<List<LabelInfo>> labelList(@RequestParam(required = false) final ItemType type)
    {
        log.info("查询标签列表: {}", type);

        final LambdaQueryWrapper<LabelInfo> queryWrapper = new LambdaQueryWrapper<>();

        queryWrapper.eq(type != null, LabelInfo::getType, type);
        final List<LabelInfo> labelInfoList = this.labelInfoServiceImpl.list(queryWrapper);

        return labelInfoList.isEmpty() ? Result.fail() : Result.ok(labelInfoList);
    }

    /**
     * 新增或修改标签信息
     * <p>
     * 该方法接收一个标签信息对象，根据该对象的ID判断是新增还是修改操作
     * </p>
     *
     * @param labelInfo 标签信息对象
     * @return 操作成功返回成功结果，否则返回失败结果
     */
    @Operation(summary = "新增或修改标签信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdateLabel(@RequestBody final LabelInfo labelInfo)
    {
        log.info("新增或修改标签信息: {}", labelInfo);

        final boolean saved = this.labelInfoServiceImpl.saveOrUpdate(labelInfo);

        return saved ? Result.ok() : Result.fail(ResultCodeEnum.NO_FOUND);
    }

    /**
     * 根据ID删除标签信息
     * <p>
     * 该方法通过标签的ID进行删除操作
     * </p>
     *
     * @param id 标签ID
     * @return 操作成功返回成功结果，否则返回失败结果
     */
    @Operation(summary = "根据id删除标签信息")
    @DeleteMapping("deleteById")
    public Result<Void> deleteLabelById(@RequestParam final Long id)
    {
        log.info("根据ID删除标签信息: {}", id);

        final boolean removed = this.labelInfoServiceImpl.removeById(id);

        return removed ? Result.ok() : Result.fail(ResultCodeEnum.NO_FOUND);
    }
}
