package com.ovo307000.lease.module.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serial;

@EqualsAndHashCode(callSuper = true)
@Schema(description = "房间&标签关联表")
@TableName(value = "room_label")
@Data
@Builder
public class RoomLabel extends BaseEntity
{

    @Serial
    private static final long serialVersionUID = 1L;

    @Schema(description = "房间id")
    @TableField(value = "room_id")
    private Long roomId;

    @Schema(description = "标签id")
    @TableField(value = "label_id")
    private Long labelId;

}