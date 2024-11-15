package com.ovo307000.lease.web.app.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.UserInfo;
import com.ovo307000.lease.module.enums.BaseStatus;
import com.ovo307000.lease.web.app.mapper.UserInfoMapper;
import com.ovo307000.lease.web.app.service.UserInfoService;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【user_info(用户信息表)】的数据库操作Service实现
 * @createDate 2023-07-26 11:12:39
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements UserInfoService
{

    public UserInfo register(final String phone)
    {
        final UserInfo userInfo = new UserInfo();

        userInfo.setPhone(phone);
        userInfo.setStatus(BaseStatus.ENABLE);
        userInfo.setNickname("User" + phone.substring(7));

        this.save(userInfo);

        return userInfo;
    }
}




