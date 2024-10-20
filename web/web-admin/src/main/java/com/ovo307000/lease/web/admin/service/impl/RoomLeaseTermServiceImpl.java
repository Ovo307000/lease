package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.LeaseTerm;
import com.ovo307000.lease.module.entity.RoomLeaseTerm;
import com.ovo307000.lease.web.admin.mapper.RoomLeaseTermMapper;
import com.ovo307000.lease.web.admin.service.RoomLeaseTermService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_lease_term(房间租期管理表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class RoomLeaseTermServiceImpl extends ServiceImpl<RoomLeaseTermMapper, RoomLeaseTerm>
        implements RoomLeaseTermService
{

    /**
     * 根据房间ID异步查询租期列表
     *
     * <p>这个方法将根据传入的房间ID，通过异步的方式查询数据库中的租期信息列表。
     *
     * @param roomId 房间ID，类型为 {@link Long}。这个参数用于指定需要查询租期的房间。
     * @return {@link CompletableFuture}<{@link List}<{@link LeaseTerm}>> 返回一个包含租期信息列表的异步计算结果。
     */
    @Override
    public CompletableFuture<List<LeaseTerm>> selectListByRoomIdAsync(final Long roomId)
    {
        return CompletableFuture.supplyAsync(() -> this.baseMapper.listLeaseTermByRoomId(roomId));
    }
}




