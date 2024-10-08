package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.FeeKey;
import com.ovo307000.lease.web.admin.mapper.FeeKeyMapper;
import com.ovo307000.lease.web.admin.service.FeeKeyService;
import com.ovo307000.lease.web.admin.vo.fee.FeeKeyVo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【fee_key(杂项费用名称表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class FeeKeyServiceImpl extends ServiceImpl<FeeKeyMapper, FeeKey>
        implements FeeKeyService
{

    private final FeeKeyMapper feeKeyMapper;

    public FeeKeyServiceImpl(final FeeKeyMapper feeKeyMapper)
    {
        this.feeKeyMapper = feeKeyMapper;
    }

    @Override
    public List<FeeKeyVo> listFeeKeyVo()
    {
        return this.feeKeyMapper.listFeeKeyVo();
    }
}




