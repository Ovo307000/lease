package com.ovo307000.lease.module.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.ovo307000.lease.module.enums.ItemType;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.*;

import java.io.Serial;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "graph_info")
@Schema(description = "图片信息表")
@EqualsAndHashCode(callSuper = true)
public class GraphInfo extends BaseEntity
{

    @Serial
    private static final long serialVersionUID = 1L;

    @Schema(description = "图片名称")
    @TableField(value = "name")
    private String name;

    @Schema(description = "图片所属对象类型")
    @TableField(value = "item_type")
    private ItemType itemType;

    @Schema(description = "图片所有对象id")
    @TableField(value = "item_id")
    private Long itemId;

    @Schema(description = "图片地址")
    @TableField(value = "url")
    private String url;

}