package com.ovo307000.lease.module.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum AppointmentStatus
{
    WAITING(1, "待看房"),

    CANCELED(2, "已取消"),

    VIEWED(3, "已看房");


    @EnumValue
    @JsonValue
    private final Integer code;


    private final String name;
}
