package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.PaymentType;
import com.ovo307000.lease.module.entity.RoomPaymentType;
import com.ovo307000.lease.web.admin.mapper.RoomPaymentTypeMapper;
import com.ovo307000.lease.web.admin.service.RoomPaymentTypeService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【room_payment_type(房间&支付方式关联表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class RoomPaymentTypeServiceImpl extends ServiceImpl<RoomPaymentTypeMapper, RoomPaymentType>
        implements RoomPaymentTypeService
{

    /**
     * 异步根据房间ID获取支付方式列表
     * <p>
     * 该方法使用传入的房间ID进行数据库查询，并以异步方式返回对应的支付方式列表。
     *
     * @param roomId 房间ID，用于查询对应的支付方式列表
     * @return 包含支付方式列表的CompletableFuture对象
     */
    @Override
    public CompletableFuture<List<PaymentType>> selectListByRoomIdAsync(final Long roomId)
    {
        return CompletableFuture.supplyAsync(() -> this.baseMapper.listPaymentTypeByRoomId(roomId));
    }
}




