package com.ovo307000.lease.web.app.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.FeeValue;
import com.ovo307000.lease.web.app.mapper.FeeValueMapper;
import com.ovo307000.lease.web.app.service.FeeValueService;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【fee_value(杂项费用值表)】的数据库操作Service实现
 * @createDate 2023-07-26 11:12:39
 */
@Service
public class FeeValueServiceImpl extends ServiceImpl<FeeValueMapper, FeeValue>
        implements FeeValueService
{

}




