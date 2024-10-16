package com.ovo307000.lease.web.admin.vo.fee;

import com.ovo307000.lease.module.entity.FeeValue;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.context.annotation.Bean;

@Data
@Builder
@Schema(description = "杂费值")
@EqualsAndHashCode(callSuper = true)
public class FeeValueVo extends FeeValue
{

    @Schema(description = "费用所对的fee_key名称")
    private String feeKeyName;
}
