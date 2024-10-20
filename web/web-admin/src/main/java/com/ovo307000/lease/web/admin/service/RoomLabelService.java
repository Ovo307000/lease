package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.LabelInfo;
import com.ovo307000.lease.module.entity.RoomLabel;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_label(房间&标签关联表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface RoomLabelService extends IService<RoomLabel>
{

    /**
     * 异步查询指定房间ID的标签列表。
     *
     * <p>通过房间ID，异步调用数据库查询并返回与该房间关联的所有标签信息。</p>
     *
     * @param roomId 房间ID，根据该ID查询相关联的标签信息
     * @return 包含所有与指定房间ID关联的标签信息的CompletableFuture对象
     */
    CompletableFuture<List<LabelInfo>> selectListByRoomIdAsync(Long roomId);
}
