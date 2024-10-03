package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.SystemPost;
import com.ovo307000.lease.web.admin.mapper.SystemPostMapper;
import com.ovo307000.lease.web.admin.service.SystemPostService;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【system_post(岗位信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class SystemPostServiceImpl extends ServiceImpl<SystemPostMapper, SystemPost>
        implements SystemPostService
{

}




