package com.ovo307000.lease.web.app.vo.fee;

import com.ovo307000.lease.module.entity.FeeValue;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@Schema(description = "杂费值")
@Data
public class FeeValueVo extends FeeValue
{

    @Schema(description = "费用所对的fee_key名称")
    private String feeKeyName;
}
