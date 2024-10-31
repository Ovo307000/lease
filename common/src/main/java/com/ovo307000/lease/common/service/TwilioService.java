package com.ovo307000.lease.common.service;

import com.ovo307000.lease.common.properties.auth.TwilioProperties;
import com.twilio.Twilio;
import com.twilio.rest.chat.v2.service.channel.Message;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * Twilio服务类，用于发送通知消息
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class TwilioService implements NotificationService
{
    private final TwilioProperties twilioProperties;

    /**
     * 初始化Twilio客户端
     */
    @PostConstruct
    public void init()
    {
        Twilio.init(this.twilioProperties.getAccountSid(), this.twilioProperties.getAuthToken());
    }

    /**
     * 发送通知消息给用户
     *
     * @param to 接收者的电话号码
     * @param messageBody 消息内容
     * @return 如果消息发送成功没有异常则返回true，否则返回false
     */
    @Override
    public boolean notifyUser(final String to, final String messageBody)
    {
        try
        {
            final Message message = Message.creator(to, this.twilioProperties.getPhoneNumber())
                                           .setBody(messageBody)
                                           .create();

            log.info("Message sent to user: {}", message.getSid());

            return true;
        }
        catch (final Exception e)
        {
            log.error("Failed to send message to user: {}", e.getMessage());

            return false;
        }
    }
}
