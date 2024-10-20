package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.FacilityInfo;
import com.ovo307000.lease.module.entity.RoomFacility;
import com.ovo307000.lease.web.admin.mapper.RoomFacilityMapper;
import com.ovo307000.lease.web.admin.service.RoomFacilityService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_facility(房间&配套关联表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class RoomFacilityServiceImpl extends ServiceImpl<RoomFacilityMapper, RoomFacility>
        implements RoomFacilityService
{
    /**
     * 异步获取房间的配套信息列表
     * <p>
     * 该方法接收一个房间ID参数，返回一个CompletableFuture对象，
     * 该对象将在异步操作完成后包含该房间的配套信息列表
     *
     * @param roomId 房间的唯一标识ID
     * @return 包含配套信息列表的CompletableFuture对象
     * @throws NullPointerException 如果roomId为null时抛出空指针异常
     * @see FacilityInfo
     */
    @Override
    public CompletableFuture<List<FacilityInfo>> selectListByRoomIdAsync(final Long roomId)
    {
        return CompletableFuture.supplyAsync(() -> this.baseMapper.listFacilityInfoByRoomId(roomId));
    }
}




