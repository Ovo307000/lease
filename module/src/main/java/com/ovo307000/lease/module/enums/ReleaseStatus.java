package com.ovo307000.lease.module.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum ReleaseStatus
{
    RELEASED(1, "已发布"),
    NOT_RELEASED(0, "未发布");


    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;
}
