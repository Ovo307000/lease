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
     * 根据房间ID获取房间详情
     * <p>
     * 此方法根据传入的房间ID查询数据库，获取对应的房间详细信息，包括公寓信息、图片列表、
     * 属性信息列表、配套信息列表、标签信息列表以及支付方式列表等，并将这些信息封装在
     * {@link RoomDetailVo} 对象中返回。
     *
     * @param roomId 房间ID，需要查询的房间的唯一标识
     * @return 返回包含指定房间详细信息的 {@link RoomDetailVo} 对象，如果房间不存在，则返回 null
     * @throws IllegalArgumentException 如果传入的房间ID为空或无效，将抛出此异常
     */
    RoomDetailVo getDetailByRoomId(Long roomId);


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

    /**
     * 根据房间ID删除房间信息
     * <p>
     * 此方法接收一个房间ID，删除数据库中对应的房间信息。如果房间存在且删除成功，
     * 返回true；否则返回false。
     *
     * @param roomId 房间ID，需要删除的房间的唯一标识
     * @return 如果操作成功返回true，否则返回false
     */
    boolean removeRoomById(Long roomId);
}