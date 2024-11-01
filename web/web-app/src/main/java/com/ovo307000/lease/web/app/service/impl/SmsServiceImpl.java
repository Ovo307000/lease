package com.ovo307000.lease.web.app.service.impl;

import com.ovo307000.lease.common.properties.auth.CodeProperties;
import com.ovo307000.lease.common.service.TwilioService;
import com.ovo307000.lease.common.utils.CodeGenerator;
import com.ovo307000.lease.web.app.service.SmsService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.OptionalInt;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
@RequiredArgsConstructor
public class SmsServiceImpl implements SmsService
{
    private final TwilioService       twilioService;
    private final StringRedisTemplate stringRedisTemplate;
    private final CodeProperties      codeProperties;

    public CompletableFuture<Boolean> sendCodeAsync(final String phone)
    {
        return CompletableFuture.supplyAsync(() -> this.sendCode(phone));
    }

    public boolean sendCode(final String phone)
    {
        try
        {
            final String phoneNum = phone.replaceAll("[^0-9]", "");

            final int codeLength = OptionalInt.of(this.codeProperties.getLength())
                                              .orElse(6);

            final String code    = CodeGenerator.generateCode(codeLength);
            final String message = this.createMessage(Integer.parseInt(code));

            log.info("Code generated: [{}] notify user: [{}]", code, phoneNum);
            this.twilioService.notifyUser(phoneNum, message);
            this.saveCodeToRedisAsync(phoneNum, code);

            return true;
        }
        catch (final Exception e)
        {
            log.error("Failed to send verification code to user: {}", e.getMessage());

            return false;
        }
    }

    private String createMessage(final int code)
    {
        return "Your verification code is: " + code;
    }

    private void saveCodeToRedis(final String phone, final String code)
    {
        this.stringRedisTemplate.opsForValue()
                                .set(phone, code);
    }

    private void saveCodeToRedisAsync(final String phone, final String code)
    {
        CompletableFuture.runAsync(() -> this.saveCodeToRedis(phone, code));
    }
}
