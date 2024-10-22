package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.*;
import com.ovo307000.lease.web.admin.mapper.*;
import com.ovo307000.lease.web.admin.service.LeaseAgreementService;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementQueryVo;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【lease_agreement(租约信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
@RequiredArgsConstructor
public class LeaseAgreementServiceImpl extends ServiceImpl<LeaseAgreementMapper, LeaseAgreement>
        implements LeaseAgreementService
{
    private final ApartmentInfoMapper  apartmentInfoMapper;
    private final LeaseAgreementMapper leaseAgreementMapper;
    private final RoomInfoMapper       roomInfoMapper;
    private final PaymentTypeMapper    paymentTypeMapper;
    private final LeaseTermMapper      leaseTermMapper;

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
    @Override
    public IPage<AgreementVo> pageAgreement(final Page<AgreementVo> page, final AgreementQueryVo queryVo)
    {
        return this.baseMapper.pageAgreement(page, queryVo);
    }

    /**
     * 根据id查询租约详细信息
     * <p>
     * 该方法接受一个Long类型的id参数，返回一个AgreementVo对象，包含了对应的租约信息
     * </p>
     *
     * @param id 租约id
     * @return AgreementVo
     */
    @Override
    public AgreementVo getAgreementById(final Long id)
    {
        final LeaseAgreement leaseAgreement = Optional.ofNullable(this.leaseAgreementMapper.selectById(id))
                                                      .orElseThrow(() -> new IllegalArgumentException("租约信息不存在"));


        final CompletableFuture<ApartmentInfo> apartmentInfoFuture;
        apartmentInfoFuture = CompletableFuture.supplyAsync(() -> this.apartmentInfoMapper.selectById(leaseAgreement.getApartmentId()));

        final CompletableFuture<RoomInfo> roomInfoFuture;
        roomInfoFuture = CompletableFuture.supplyAsync(() -> this.roomInfoMapper.selectById(leaseAgreement.getRoomId()));

        final CompletableFuture<PaymentType> paymentTypeFuture;
        paymentTypeFuture = CompletableFuture.supplyAsync(() -> this.paymentTypeMapper.selectById(leaseAgreement.getPaymentTypeId()));

        final CompletableFuture<LeaseTerm> leaseTermFuture;
        leaseTermFuture = CompletableFuture.supplyAsync(() -> this.leaseTermMapper.selectById(leaseAgreement.getLeaseTermId()));

        final AgreementVo agreementVo = new AgreementVo();
        BeanUtils.copyProperties(leaseAgreement, agreementVo);

        agreementVo.setApartmentInfo(apartmentInfoFuture.join());
        agreementVo.setRoomInfo(roomInfoFuture.join());
        agreementVo.setPaymentType(paymentTypeFuture.join());
        agreementVo.setLeaseTerm(leaseTermFuture.join());

        return agreementVo;
    }
}
