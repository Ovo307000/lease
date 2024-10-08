package com.ovo307000.lease.web.admin.vo.room;

import com.ovo307000.lease.module.entity.ApartmentInfo;
import com.ovo307000.lease.module.entity.RoomInfo;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;


@EqualsAndHashCode(callSuper = true)
@Data
@Schema(description = "房间信息")
public class RoomItemVo extends RoomInfo
{

    @Schema(description = "租约结束日期")
    private Date leaseEndDate;

    @Schema(description = "当前入住状态")
    private Boolean isCheckIn;

    @Schema(description = "所属公寓信息")
    private ApartmentInfo apartmentInfo;

}
