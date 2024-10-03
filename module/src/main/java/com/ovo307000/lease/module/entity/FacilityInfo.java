package com.ovo307000.lease.module.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.ovo307000.lease.module.enums.ItemType;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serial;

@EqualsAndHashCode(callSuper = true)
@Schema(description = "配套信息表")
@TableName(value = "facility_info")
@Data
public class FacilityInfo extends BaseEntity
{
    @Serial
    private static final long serialVersionUID = 1L;

    @Schema(description = "配套所属对象类型")
    @TableField(value = "type")
    private ItemType type;

    @Schema(description = "名称")
    @TableField(value = "name")
    private String name;

    @Schema(description = "图标")
    @TableField(value = "icon")
    private String icon;

}