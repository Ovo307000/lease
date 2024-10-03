package com.ovo307000.lease.module.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Schema(description = "房间&支付方式关联表")
@TableName(value = "room_payment_type")
@Data
@Builder
public class RoomPaymentType extends BaseEntity
{

    private static final long serialVersionUID = 1L;

    @Schema(description = "房间id")
    @TableField(value = "room_id")
    private Long roomId;

    @Schema(description = "支付类型id")
    @TableField(value = "payment_type_id")
    private Long paymentTypeId;


}