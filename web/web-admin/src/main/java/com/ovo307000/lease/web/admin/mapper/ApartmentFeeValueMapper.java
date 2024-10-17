package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.ApartmentFeeValue;
import com.ovo307000.lease.web.admin.vo.fee.FeeValueVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【apartment_fee_value(公寓&杂费关联表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.ApartmentFeeValue
 */
public interface ApartmentFeeValueMapper extends BaseMapper<ApartmentFeeValue>
{

    /**
     * 根据小区ID查询费用项列表
     * <p>
     * 此方法旨在为特定小区检索所有相关的费用项信息它接受一个长整型的小区ID作为参数，
     * 并返回一个FeeValueVo对象列表，这些对象代表了与指定小区相关的各种费用项
     *
     * @param apartmentId 小区ID，用于标识特定小区
     * @return 返回与指定小区相关的费用项列表
     */
    List<FeeValueVo> selectListByApartmentId(@Param("apartmentId") Long apartmentId);
}




