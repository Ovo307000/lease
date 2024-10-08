package com.ovo307000.lease.web.app.vo.fee;


import com.ovo307000.lease.module.entity.FeeKey;
import com.ovo307000.lease.module.entity.FeeValue;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;


@EqualsAndHashCode(callSuper = true)
@Data
public class FeeKeyVo extends FeeKey
{

    @Schema(description = "杂费value列表")
    private List<FeeValue> feeValueList;
}
