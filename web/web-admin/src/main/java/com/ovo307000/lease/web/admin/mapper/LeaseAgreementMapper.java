package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.module.entity.LeaseAgreement;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementQueryVo;
import com.ovo307000.lease.web.admin.vo.agreement.AgreementVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

/**
 * @author liubo
 * @description 针对表【lease_agreement(租约信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.LeaseAgreement
 */
public interface LeaseAgreementMapper extends BaseMapper<LeaseAgreement>
{

    /**
     * 分页查询租约信息
     *
     * @param page 包含分页参数的分页对象，类型为 Page<AgreementVo>
     * @param queryVo 查询条件对象，类型为 AgreementQueryVo
     *        - provinceId: 公寓所处省份id
     *        - cityId: 公寓所处城市id
     *        - districtId: 公寓所处区域id
     *        - apartmentId: 公寓id
     *        - roomNumber: 房间号
     *        - name: 用户姓名
     *        - phone: 用户手机号码
     * @return 返回包含 AgreementVo 对象的分页结果，类型为 IPage<AgreementVo>
     * @throws DataAccessException 如果数据库访问出现问题
     */
    IPage<AgreementVo> pageAgreement(Page<AgreementVo> page, @Param("queryVo") AgreementQueryVo queryVo);
}




