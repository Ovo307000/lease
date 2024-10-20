package com.ovo307000.lease.web.admin.controller.apartment;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.RoomInfo;
import com.ovo307000.lease.module.enums.ReleaseStatus;
import com.ovo307000.lease.web.admin.service.impl.RoomInfoServiceImpl;
import com.ovo307000.lease.web.admin.vo.room.RoomDetailVo;
import com.ovo307000.lease.web.admin.vo.room.RoomItemVo;
import com.ovo307000.lease.web.admin.vo.room.RoomQueryVo;
import com.ovo307000.lease.web.admin.vo.room.RoomSubmitVo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 房间信息管理控制器
 * 负责处理与房间信息相关的请求
 */
@Slf4j
@Tag(name = "房间信息管理")
@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/room")
public class RoomController
{
    private final RoomInfoServiceImpl roomInfoServiceImpl;

    /**
     * 保存或更新房间信息
     *
     * @param roomSubmitVo 房间提交信息对象
     * @return 操作结果
     */
    @Operation(summary = "保存或更新房间信息")
    @PostMapping("saveOrUpdate")
    public Result<Void> saveOrUpdate(@RequestBody final RoomSubmitVo roomSubmitVo)
    {
        log.info("保存或更新房间信息: {}", roomSubmitVo);

        final boolean saved = this.roomInfoServiceImpl.saveOrUpdateRoom(roomSubmitVo);

        return saved ? Result.success() : Result.failure();
    }

    /**
     * 根据条件分页查询房间列表
     *
     * @param current 当前页码
     * @param size    每页显示条数
     * @param queryVo 查询条件对象
     * @return 分页查询结果
     */
    @Operation(summary = "根据条件分页查询房间列表")
    @GetMapping("pageItem")
    public Result<IPage<RoomItemVo>> pageItem(@RequestParam final long current,
                                              @RequestParam final long size,
                                              final RoomQueryVo queryVo)
    {
        log.info("根据条件分页查询房间列表: 当前页码 = {}, 每页显示条数 = {}, 查询条件 = {}", current, size, queryVo);

        final Page<RoomItemVo>  page            = new Page<>(current, size);
        final IPage<RoomItemVo> roomItemVoIPage = this.roomInfoServiceImpl.pageItem(page, queryVo);

        return roomItemVoIPage != null ? Result.success(roomItemVoIPage) : Result.failure();
    }

    /**
     * 根据id获取房间详细信息
     *
     * @param id 房间ID
     * @return 房间详细信息
     */
    @Operation(summary = "根据id获取房间详细信息")
    @GetMapping("getDetailById")
    public Result<RoomDetailVo> getDetailById(@RequestParam final Long id)
    {
        log.info("根据id获取房间详细信息: id = {}", id);

        final LambdaQueryWrapper<RoomDetailVo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(RoomDetailVo::getId, id);

        final RoomDetailVo roomDetailVo = this.roomInfoServiceImpl.getDetailByRoomId(id);

        return roomDetailVo != null ? Result.success(roomDetailVo) : Result.failure();
    }

    /**
     * 根据id删除房间信息
     *
     * @param id 房间ID
     * @return 操作结果
     */
    @Operation(summary = "根据id删除房间信息")
    @DeleteMapping("removeById")
    public Result<Void> removeById(@RequestParam final Long id)
    {
        log.info("根据id删除房间信息: id = {}", id);

        return this.roomInfoServiceImpl.removeRoomById(id) ? Result.success() : Result.failure();
    }

    /**
     * 根据id修改房间发布状态
     *
     * @param id     房间ID
     * @param status 发布状态
     * @return 操作结果
     */
    @Operation(summary = "根据id修改房间发布状态")
    @PostMapping("updateReleaseStatusById")
    public Result<Void> updateReleaseStatusById(final Long id, final ReleaseStatus status)
    {
        log.info("根据id修改房间发布状态: id = {}, 发布状态 = {}", id, status);

        final LambdaUpdateWrapper<RoomInfo> updateWrapper = new LambdaUpdateWrapper<>();
        updateWrapper.eq(RoomInfo::getId, id)
                     .set(RoomInfo::getIsRelease, status);

        return this.roomInfoServiceImpl.update(updateWrapper) ? Result.success() : Result.failure();
    }

    /**
     * 根据公寓id查询房间列表
     *
     * @param id 公寓ID
     * @return 房间信息列表
     */
    @GetMapping("listBasicByApartmentId")
    @Operation(summary = "根据公寓id查询房间列表")
    public Result<List<RoomInfo>> listBasicByApartmentId(final Long id)
    {
        return Result.success();
    }
}
