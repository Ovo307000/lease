package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.LeaseAgreement;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementQueryVo;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementVo;

/**
 * @author liubo
 * @description 针对表【lease_agreement(租约信息表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface LeaseAgreementService extends IService<LeaseAgreement>
{

    /**
     * 根据条件分页查询租约列表
     * <p>
     * 该方法接受一个分页对象和一个查询条件对象作为参数，返回一个IPage对象，包含了当前页的租约信息和总记录数
     * </p>
     *
     * @param page    Page
     * @param queryVo AgreementQueryVo
     * @return IPage<AgreementVo>
     */
    IPage<AgreementVo> pageAgreement(Page<AgreementVo> page, AgreementQueryVo queryVo);

    /**
     * 根据id查询租约信息
     * <p>
     * 该方法接受一个租约id作为参数，返回一个AgreementVo对象，包含了对应的租约信息
     * </p>
     *
     * @param id 租约id
     * @return AgreementVo
     */
    AgreementVo getAgreementById(Long id);
}
