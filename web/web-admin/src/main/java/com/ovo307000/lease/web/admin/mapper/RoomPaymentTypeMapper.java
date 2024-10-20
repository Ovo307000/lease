package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.PaymentType;
import com.ovo307000.lease.module.entity.RoomPaymentType;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【room_payment_type(房间&支付方式关联表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.RoomPaymentType
 */
public interface RoomPaymentTypeMapper extends BaseMapper<RoomPaymentType>
{

    /**
     * 根据房间ID列出支付方式列表的方法。
     * <p>
     * 该方法通过传入的房间ID查询对应的支付方式列表。
     * 使用该方法可以获取与特定房间关联的所有支付方式。
     * </p>
     *
     * @param roomId 用于查询支付方式的房间ID
     * @return 包括支付方式列表的List对象
     */
    List<PaymentType> listPaymentTypeByRoomId(Long roomId);
}




