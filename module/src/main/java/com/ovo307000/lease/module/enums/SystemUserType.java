package com.ovo307000.lease.module.enums;

import com.baomidou.mybatisplus.annotation.EnumValue;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum SystemUserType implements BaseEnum
{
    ADMIN(0, "管理员"),
    COMMON(1, "普通用户");

    @EnumValue
    @JsonValue
    private final Integer code;

    private final String name;
}
