package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.ApartmentFacility;
import com.ovo307000.lease.module.entity.FacilityInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【apartment_facility(公寓&配套关联表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.ApartmentFacility
 */
public interface ApartmentFacilityMapper extends BaseMapper<ApartmentFacility>
{

    /**
     * 根据公寓ID选择设施信息列表
     * <p>
     * 此方法通过公寓ID查询数据库，并返回与该公寓关联的所有设施信息
     * 它主要用于获取特定公寓的所有设施详情，以便于后续的处理和展示
     *
     * @param apartmentId 公寓ID，用于定位特定的公寓
     * @return 返回一个包含公寓设施信息的列表，如果没有找到相关设施，则返回空列表
     */
    List<FacilityInfo> selectListByApartmentId(@Param("apartmentId") Long apartmentId);
}




