package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.RoomAttrValue;
import com.ovo307000.lease.web.admin.mapper.RoomAttrValueMapper;
import com.ovo307000.lease.web.admin.service.RoomAttrValueService;
import com.ovo307000.lease.web.admin.vo.attr.AttrValueVo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_attr_value(房间&基本属性值关联表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class RoomAttrValueServiceImpl extends ServiceImpl<RoomAttrValueMapper, RoomAttrValue>
        implements RoomAttrValueService
{

    /**
     * 异步查询指定房间ID的属性值列表。
     *
     * <p>该方法会根据指定的房间ID，异步查询该房间的属性值视图对象列表。
     * 其中每个属性值视图对象包含属性值及其对应的属性key名称。</p>
     *
     * @param roomId 房间ID，用于指定要查询属性值的房间。
     *               房间ID不能为空且不能小于0。
     *
     * @return CompletableFuture<List < AttrValueVo>> 包含属性值对象的异步结果，
     *         其中属性值对象列表包含了属性值及其对应的属性key名称。
     *
     * @throws IllegalArgumentException 如果房间ID为null或小于0，
     *                                  抛出非法参数异常。
     *
     * @see AttrValueVo
     */
    @Override
    public CompletableFuture<List<AttrValueVo>> selectListByRoomIdAsync(final Long roomId)
    {
        if (roomId == null || roomId < 0)
        {
            throw new IllegalArgumentException("查询房间属性值列表时，房间ID不能为空且房间ID不能小于0");
        }

        return CompletableFuture.supplyAsync(() -> this.baseMapper.listAttrValueVoByRoomId(roomId));
    }
}
