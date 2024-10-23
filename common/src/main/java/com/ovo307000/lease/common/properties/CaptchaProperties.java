package com.ovo307000.lease.common.properties;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Getter
@Setter
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "auth.captcha")
public class CaptchaProperties
{
    private Integer captchaWidth;
    private Integer captchaHeight;
    private Integer captchaLength;
    private Long    captchaTtlMillis;
}
