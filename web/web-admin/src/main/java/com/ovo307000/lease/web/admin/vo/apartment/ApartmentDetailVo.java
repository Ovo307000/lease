package com.ovo307000.lease.web.admin.vo.apartment;


import com.ovo307000.lease.module.entity.ApartmentInfo;
import com.ovo307000.lease.module.entity.FacilityInfo;
import com.ovo307000.lease.module.entity.LabelInfo;
import com.ovo307000.lease.web.admin.vo.fee.FeeValueVo;
import com.ovo307000.lease.web.admin.vo.graph.GraphVo;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.util.List;

@Schema(description = "公寓信息")
@Data
public class ApartmentDetailVo extends ApartmentInfo
{

    @Schema(description = "图片列表")
    private List<GraphVo> graphVoList;

    @Schema(description = "标签列表")
    private List<LabelInfo> labelInfoList;

    @Schema(description = "配套列表")
    private List<FacilityInfo> facilityInfoList;

    @Schema(description = "杂费列表")
    private List<FeeValueVo> feeValueVoList;

}
