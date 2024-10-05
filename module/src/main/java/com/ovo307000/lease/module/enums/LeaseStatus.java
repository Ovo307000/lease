package com.ovo307000.lease.module.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public enum LeaseStatus
{

    SIGNING(1, "签约待确认"),
    SIGNED(2, "已签约"),
    CANCELED(3, "已取消"),
    EXPIRED(4, "已到期"),
    WITHDRAWING(5, "退租待确认"),
    WITHDRAWN(6, "已退租"),
    RENEWING(7, "续约待确认");

    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;
}