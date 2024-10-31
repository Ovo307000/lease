package com.ovo307000.lease.common.properties.auth;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Getter
@Setter
@Configuration
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "auth.sms.twilio")
public class TwilioProperties
{
    private String accountSid;      // 账户 SID 用于验证, 从 Twilio 控制台获取
    private String authToken;       // 认证令牌用于验证, 从 Twilio 控制台获取

    private String phoneNumber;     // Twilio 电话号码, 从 Twilio 控制台获取
}
