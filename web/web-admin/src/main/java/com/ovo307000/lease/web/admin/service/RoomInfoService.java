package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.RoomInfo;
import com.ovo307000.lease.web.admin.vo.room.RoomDetailVo;
import com.ovo307000.lease.web.admin.vo.room.RoomItemVo;
import com.ovo307000.lease.web.admin.vo.room.RoomQueryVo;
import com.ovo307000.lease.web.admin.vo.room.RoomSubmitVo;

/**
 * @author liubo
 * @description 针对表【room_info(房间信息表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface RoomInfoService extends IService<RoomInfo>
{

    /**
     * 根据ID获取房间详细信息
     * <p>
     * 该方法根据传入的房间ID，到数据库中查询并返回房间的详细信息，封装到RoomDetailVo对象中
     *
     * @param id 房间ID
     * @return 房间的详细信息视图对象
     */
    RoomDetailVo getDetailById(Long id);


    /**
     * 分页查询房间信息
     * <p>
     * 该方法根据传入的Page对象和RoomQueryVo对象，到数据库中分页查询房间信息，封装到RoomItemVo对象中
     *
     * @param page    分页对象，用于接收分页查询结果
     * @param queryVo 查询条件对象，用于指定查询条件
     * @return 分页查询结果，包含总记录数、当前页数据等信息
     */
    IPage<RoomItemVo> pageItem(Page<RoomItemVo> page, RoomQueryVo queryVo);

    /**
     * 保存或更新房间信息
     * <p>
     * 此方法用于处理房间信息的保存或更新操作，根据传入的房间提交数据对象（RoomSubmitVo）
     * 来执行相应的数据库操作。如果房间ID为空，表示这是一个新的房间需要被保存；如果房间ID
     * 不为空，则表示该房间已经存在，需要更新其信息。
     *
     * @param roomSubmitVo 包含房间信息的数据传输对象，用于保存或更新房间信息
     * @return 操作是否成功执行，返回true表示成功，返回false表示失败
     */
    boolean saveOrUpdateRoom(RoomSubmitVo roomSubmitVo);
}