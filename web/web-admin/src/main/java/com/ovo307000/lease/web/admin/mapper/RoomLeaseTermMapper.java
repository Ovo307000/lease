package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.LeaseTerm;
import com.ovo307000.lease.module.entity.RoomLeaseTerm;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【room_lease_term(房间租期管理表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.RoomLeaseTerm
 */
public interface RoomLeaseTermMapper extends BaseMapper<RoomLeaseTerm>
{
    /**
     * 根据房间ID查询租期列表
     *
     * <p>这个方法用于根据传入的房间ID查询相应的租期信息列表。</p>
     *
     * @param roomId 房间ID，类型为 {@link Long}。这个参数用于指定需要查询租期的房间。
     * @return {@link List}<{@link LeaseTerm}> 返回包含符合条件的租期信息列表。
     */
    List<LeaseTerm> listLeaseTermByRoomId(@Param("roomId") Long roomId);
}




