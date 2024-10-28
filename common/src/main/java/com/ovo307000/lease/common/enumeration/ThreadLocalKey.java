package com.ovo307000.lease.common.enumeration;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ThreadLocalKey
{
    USER_NAME("userName"),
    SESSION_ID("sessionId"),
    ACCESS_TOKEN("accessToken"),
    USER_CLAIMS("userClaims");

    private final String key;

}
