package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.FacilityInfo;
import com.ovo307000.lease.module.entity.RoomFacility;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【room_facility(房间&配套关联表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.RoomFacility
 */
public interface RoomFacilityMapper extends BaseMapper<RoomFacility>
{

    /**
     * 根据房间ID查询配套信息列表
     * <p>
     * 该方法从数据库中获取与指定房间ID关联的所有配套信息，并返回包含这些配套信息的列表。
     *
     * @param roomId 房间的唯一标识ID
     * @return 包含匹配配套信息的列表，如果没有找到相关配套信息则返回空列表
     * @throws IllegalArgumentException 如果提供的roomId为null或无效时抛出该异常
     * @see FacilityInfo
     */
    List<FacilityInfo> listFacilityInfoByRoomId(Long roomId);
}




