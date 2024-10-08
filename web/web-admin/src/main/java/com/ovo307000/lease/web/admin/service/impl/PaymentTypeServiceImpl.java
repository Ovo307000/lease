package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.PaymentType;
import com.ovo307000.lease.web.admin.mapper.PaymentTypeMapper;
import com.ovo307000.lease.web.admin.service.PaymentTypeService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【payment_type(支付方式表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class PaymentTypeServiceImpl extends ServiceImpl<PaymentTypeMapper, PaymentType> implements PaymentTypeService
{
    public List<PaymentType> listNotDeleted()
    {
        final LambdaQueryWrapper<PaymentType> wrapper = new LambdaQueryWrapper<>();

        wrapper.eq(PaymentType::getIsDeleted, 0);

        return this.baseMapper.selectList(wrapper);
    }
}




