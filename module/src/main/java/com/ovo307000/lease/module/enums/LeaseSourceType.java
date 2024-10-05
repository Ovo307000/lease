package com.ovo307000.lease.module.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Getter;


@Getter
@AllArgsConstructor
public enum LeaseSourceType
{

    NEW(1, "新签"),
    RENEW(2, "续约");

    @JsonValue
    @EnumValue
    private final Integer code;

    private final String name;
}