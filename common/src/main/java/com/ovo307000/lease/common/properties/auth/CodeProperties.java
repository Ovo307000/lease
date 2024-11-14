package com.ovo307000.lease.common.properties.auth;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Getter
@Setter
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "auth.code")
public class CodeProperties
{
    private int length;
}
