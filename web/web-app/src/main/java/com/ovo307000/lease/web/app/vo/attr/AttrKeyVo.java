package com.ovo307000.lease.web.app.vo.attr;

import com.ovo307000.lease.model.entity.AttrKey;
import com.ovo307000.lease.model.entity.AttrValue;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;


@Data
public class AttrKeyVo extends AttrKey {

    @Schema(description = "属性value列表")
    private List<AttrValue> attrValueList;
}
