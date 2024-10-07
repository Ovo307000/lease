package com.ovo307000.lease.web.admin.controller.apartment;

import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.AttrKey;
import com.ovo307000.lease.module.entity.AttrValue;
import com.ovo307000.lease.web.admin.service.impl.AttrKeyServiceImpl;
import com.ovo307000.lease.web.admin.service.impl.AttrValueServiceImpl;
import com.ovo307000.lease.web.admin.vo.attr.AttrKeyVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 房间属性控制器
 * <p>
 * 本类负责处理与房间属性相关的HTTP请求，包括属性名称和属性值的增、删、查、改等操作
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "房间属性管理")
@RequestMapping("/admin/attr")
public class AttrController
{
    // 注入 AttrKeyServiceImpl，用于处理属性名称的业务逻辑
    private final AttrKeyServiceImpl   attrKeyServiceImpl;
    // 注入 AttrValueServiceImpl，用于处理属性值的业务逻辑
    private final AttrValueServiceImpl attrValueServiceImpl;

    /**
     * 新增或更新属性名称
     * <p>
     * 本方法接收一个 AttrKey 对象作为请求体，用于新增或更新属性名称。
     *
     * @param attrKey 属性名称实体
     * @return 返回一个 Result 对象，表示操作结果
     */
    @Operation(summary = "新增或更新属性名称")
    @PostMapping("key/saveOrUpdate")
    public Result<Void> saveOrUpdateAttrKey(@RequestBody final AttrKey attrKey)
    {
        // 记录新增或更新操作的日志
        log.info("新增或更新属性名称: {}", attrKey);

        // 执行保存或更新操作
        final boolean saved = this.attrKeyServiceImpl.saveOrUpdate(attrKey);

        // 返回操作结果
        return saved ? Result.ok() : Result.fail(ResultCodeEnum.SAVE_FAILED);
    }

    /**
     * 新增或更新属性值
     * <p>
     * 本方法接收一个 AttrValue 对象作为请求体，用于新增或更新属性值。
     *
     * @param attrValue 属性值实体
     * @return 返回一个 Result 对象，表示操作结果
     */
    @Operation(summary = "新增或更新属性值")
    @PostMapping("value/saveOrUpdate")
    public Result<Void> saveOrUpdateAttrValue(@RequestBody final AttrValue attrValue)
    {
        // 记录新增或更新操作的日志
        log.info("新增或更新属性值: {}", attrValue);

        // 执行保存或更新操作
        final boolean saved = this.attrValueServiceImpl.saveOrUpdate(attrValue);

        // 返回操作结果
        return saved ? Result.ok() : Result.fail(ResultCodeEnum.SAVE_FAILED);
    }

    /**
     * 查询所有属性名称和属性值的列表
     * <p>
     * 本方法通过调用 attrKeyServiceImpl 的 list 方法，获取所有属性名称信息，
     * 并将其转换为 AttrKeyVo 对象列表，以便于前端展示或进一步处理
     *
     * @return 返回一个 Result 对象，包含属性名称和属性值的列表如果列表为空，
     * 则返回 ResultCodeEnum.NO_FOUND 错误码；否则，返回包含列表的 Result 对象
     */
    @Operation(summary = "查询全部属性名称和属性值列表")
    @GetMapping("list")
    public Result<List<AttrKeyVo>> listAttrInfo()
    {
        // 记录查询操作的日志
        log.info("查询全部属性名称和属性值列表");

        // 获取所有属性名称信息
        final List<AttrKeyVo> attrKeyList = this.attrKeyServiceImpl.listAttrKeyVo();

        // 返回查询结果
        return attrKeyList.isEmpty() ? Result.fail(ResultCodeEnum.NO_FOUND) : Result.ok(attrKeyList);
    }

    /**
     * 根据id删除属性名称
     * <p>
     * 本方法接收一个 Long 类型的属性名称ID，用于删除指定的属性名称。
     *
     * @param attrKeyId 属性名称ID
     * @return 返回一个 Result 对象，表示操作结果
     */
    @Operation(summary = "根据id删除属性名称")
    @DeleteMapping("key/deleteById")
    public Result<Void> removeAttrKeyById(@RequestParam final Long attrKeyId)
    {
        // 记录删除操作的日志
        log.info("根据id删除属性名称: {}", attrKeyId);

        // 执行删除操作
        final boolean removed = this.attrKeyServiceImpl.removeById(attrKeyId);

        // 返回操作结果
        return removed ? Result.ok() : Result.fail(ResultCodeEnum.REMOVE_NOT_FOUND);
    }

    /**
     * 根据id删除属性值
     * <p>
     * 本方法接收一个 Long 类型的属性值ID，用于删除指定的属性值。
     *
     * @param id 属性值ID
     * @return 返回一个 Result 对象，表示操作结果
     */
    @Operation(summary = "根据id删除属性值")
    @DeleteMapping("value/deleteById")
    public Result<Void> removeAttrValueById(@RequestParam final Long id)
    {
        // 记录删除操作的日志
        log.info("根据id删除属性值: {}", id);

        // 执行删除操作
        final boolean removed = this.attrValueServiceImpl.removeById(id);

        // 返回操作结果
        return removed ? Result.ok() : Result.fail(ResultCodeEnum.REMOVE_NOT_FOUND);
    }
}