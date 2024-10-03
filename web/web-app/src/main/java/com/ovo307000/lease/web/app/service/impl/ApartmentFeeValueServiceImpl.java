package com.ovo307000.lease.web.app.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.model.entity.ApartmentFeeValue;
import com.ovo307000.lease.web.app.mapper.ApartmentFeeValueMapper;
import com.ovo307000.lease.web.app.service.ApartmentFeeValueService;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【apartment_fee_value(公寓&杂费关联表)】的数据库操作Service实现
 * @createDate 2023-07-26 11:12:39
 */
@Service
public class ApartmentFeeValueServiceImpl extends ServiceImpl<ApartmentFeeValueMapper, ApartmentFeeValue>
        implements ApartmentFeeValueService
{
}




