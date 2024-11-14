package com.ovo307000.lease.web.app.service.impl;

import com.ovo307000.lease.common.service.NotificationService;
import com.ovo307000.lease.web.app.service.LoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LoginServiceImpl implements LoginService
{
    private final NotificationService notificationService;

    @Override
    public boolean sendCode(final String phone, final String code)
    {
        return this.notificationService.notifyUser(phone, this.generateMessage(code));
    }

}
