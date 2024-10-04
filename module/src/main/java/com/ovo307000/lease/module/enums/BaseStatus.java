package com.ovo307000.lease.module.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum BaseStatus
{
    ENABLE(1, "正常"),

    DISABLE(0, "禁用");


    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;
}
