package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.LeaseAgreement;
import com.ovo307000.lease.web.admin.mapper.LeaseAgreementMapper;
import com.ovo307000.lease.web.admin.service.LeaseAgreementService;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementQueryVo;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementVo;
import org.springframework.stereotype.Service;

/**
 * @author liubo
 * @description 针对表【lease_agreement(租约信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class LeaseAgreementServiceImpl extends ServiceImpl<LeaseAgreementMapper, LeaseAgreement>
        implements LeaseAgreementService
{

    @Override
    public IPage<AgreementVo> pageAgreement(final Page<AgreementVo> page, final AgreementQueryVo queryVo)
    {
        return this.baseMapper.pageAgreement(page, queryVo);
    }
}
