package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.RoomAttrValue;
import com.ovo307000.lease.web.admin.vo.attr.AttrValueVo;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_attr_value(房间&基本属性值关联表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface RoomAttrValueService extends IService<RoomAttrValue>
{

    /**
     * 异步查询指定房间ID的属性值列表。
     *
     * @param roomId 房间ID
     * @return 包含属性值对象的CompletableFuture异步结果
     * @throws IllegalArgumentException 如果房间ID为null或小于0
     *
     * @see AttrValueVo
     */
    CompletableFuture<List<AttrValueVo>> selectListByRoomIdAsync(final Long roomId);
}
