package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.PaymentType;
import com.ovo307000.lease.module.entity.RoomPaymentType;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * RoomPaymentTypeService接口主要用于处理和房间支付类型相关的业务逻辑。
 * 该接口继承自IService，并针对RoomPaymentType实体类进行相关操作。
 * 它定义了一个方法，用于异步地根据房间ID查询与之关联的支付类型列表。
 *
 * <p>
 * 该服务用于房间与支付方式之间的关系管理。
 * </p>
 *
 * @see RoomPaymentType
 * @see PaymentType
 * @see IService
 */
public interface RoomPaymentTypeService extends IService<RoomPaymentType>
{

    /**
     * 根据房间ID异步查询支付类型列表的方法。
     * <p>
     * 该方法用于获取与指定房间ID关联的所有支付类型，并返回一个包含支付类型列表的CompletableFuture对象。
     * 这是一个异步操作，允许调用者在等待查询结果的过程中进行其它操作。
     * </p>
     *
     * @param roomId 要查询的房间的ID。
     * @return 包含支付类型列表的CompletableFuture对象。
     */
    CompletableFuture<List<PaymentType>> selectListByRoomIdAsync(Long roomId);
}
