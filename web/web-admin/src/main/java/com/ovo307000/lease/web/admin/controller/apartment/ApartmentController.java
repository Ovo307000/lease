package com.ovo307000.lease.web.admin.controller.apartment;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.ApartmentInfo;
import com.ovo307000.lease.module.enums.ReleaseStatus;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentDetailVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentItemVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentQueryVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentSubmitVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * <p>
 * 公寓信息管理
 * </p>
 *
 * @author liubo
 * @since 2023-07-25
 */
@Tag(name = "公寓信息管理")
@RestController
@RequestMapping("/admin/apartment")
public class ApartmentController
{

    /**
     * 保存或更新公寓信息
     *
     * @param apartmentSubmitVo 保存或更新的公寓信息
     * @return 保存或更新的结果
     */
    @Operation(summary = "保存或更新公寓信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final ApartmentSubmitVo apartmentSubmitVo)
    {
        return Result.ok();
    }

    /**
     * 根据条件分页查询公寓列表
     *
     * @param current   当前页
     * @param size      页大小
     * @param queryVo   查询条件
     * @return 公寓列表
     */
    @Operation(summary = "根据条件分页查询公寓列表")
    @GetMapping("pageItem")
    public Result<IPage<ApartmentItemVo>> pageItem(@RequestParam final long current,
                                                   @RequestParam final long size,
                                                   final ApartmentQueryVo queryVo)
    {
        return Result.ok();
    }

    /**
     * 根据ID获取公寓详细信息
     *
     * @param id 公寓ID
     * @return 公寓详细信息
     */
    @Operation(summary = "根据ID获取公寓详细信息")
    @GetMapping("getDetailById")
    public Result<ApartmentDetailVo> getDetailById(@RequestParam final Long id)
    {
        return Result.ok();
    }

    /**
     * 根据id删除公寓信息
     *
     * @param id 公寓ID
     * @return 删除的结果
     */
    @Operation(summary = "根据id删除公寓信息")
    @DeleteMapping("removeById")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        return Result.ok();
    }

    /**
     * 根据id修改公寓发布状态
     *
     * @param id      公寓ID
     * @param status  发布状态
     * @return 修改的结果
     */
    @Operation(summary = "根据id修改公寓发布状态")
    @PostMapping("updateReleaseStatusById")
    public Result<Void> updateReleaseStatusById(@RequestParam final Long id, @RequestParam final ReleaseStatus status)
    {
        return Result.ok();
    }

    /**
     * 根据区县id查询公寓信息列表
     *
     * @param id     区县ID
     * @return 公寓信息列表
     */
    @Operation(summary = "根据区县id查询公寓信息列表")
    @GetMapping("listInfoByDistrictId")
    public Result<List<ApartmentInfo>> listInfoByDistrictId(@RequestParam final Long id)
    {
        return Result.ok();
    }
}