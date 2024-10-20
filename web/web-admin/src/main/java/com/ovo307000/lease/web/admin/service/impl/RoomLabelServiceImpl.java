package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.LabelInfo;
import com.ovo307000.lease.module.entity.RoomLabel;
import com.ovo307000.lease.web.admin.mapper.RoomLabelMapper;
import com.ovo307000.lease.web.admin.service.RoomLabelService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_label(房间&标签关联表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class RoomLabelServiceImpl extends ServiceImpl<RoomLabelMapper, RoomLabel>
        implements RoomLabelService
{

    /**
     * 异步查询指定房间ID的标签信息列表.
     *
     * <p>该方法会启动一个异步任务去数据库中根据房间ID查询相关标签信息，并以CompletableFuture的形式返回结果.</p>
     *
     * @param roomId 房间ID
     * @return 包含标签信息对象的CompletableFuture列表。
     * @throws NullPointerException 如果 roomId 参数为 null
     */
    @Override
    public CompletableFuture<List<LabelInfo>> selectListByRoomIdAsync(final Long roomId)
    {
        return CompletableFuture.supplyAsync(() -> this.baseMapper.listLabelInfoByRoomId(roomId));
    }
}




