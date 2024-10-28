package com.ovo307000.lease.common.enumeration;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ThreadLocalKey
{
    USER_ID("userId"),
    USER_NAME("userName"),
    USER_ROLE("userRole"),
    USER_PERMISSION("userPermission"),
    SESSION_ID("sessionId");

    private final String key;

}
