package com.ovo307000.lease.web.admin.vo.attr;

import com.ovo307000.lease.module.entity.AttrValue;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;


@EqualsAndHashCode(callSuper = true)
@Schema(description = "属性值")
@Data
public class AttrValueVo extends AttrValue
{

    @Schema(description = "对应的属性key_name")
    private String attrKeyName;
}
