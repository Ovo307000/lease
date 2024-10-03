package com.ovo307000.lease.web.app.vo.agreement;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ovo307000.lease.module.enums.LeaseSourceType;
import com.ovo307000.lease.module.enums.LeaseStatus;
import com.ovo307000.lease.web.app.vo.graph.GraphVo;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Data
@Schema(description = "租约基本信息")
public class AgreementItemVo
{

    @Schema(description = "租约id")
    private Long id;

    @Schema(description = "房间图片列表")
    private List<GraphVo> roomGraphVoList;

    @Schema(description = "公寓名称")
    private String apartmentName;

    @Schema(description = "房间号")
    private String roomNumber;

    @Schema(description = "租约状态")
    private LeaseStatus leaseStatus;

    @Schema(description = "租约开始日期")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date leaseStartDate;

    @Schema(description = "租约结束日期")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date leaseEndDate;

    @Schema(description = "租约来源")
    private LeaseSourceType sourceType;

    @Schema(description = "租金")
    private BigDecimal rent;

}
