package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.LabelInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【label_info(标签信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.LabelInfo
 */
public interface LabelInfoMapper extends BaseMapper<LabelInfo>
{

    List<LabelInfo> selectListByApartmentId(@Param("apartmentId") Long apartmentId);
}




