package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.GraphInfo;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.vo.graph.GraphVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【graph_info(图片信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.GraphInfo
 */
public interface GraphInfoMapper extends BaseMapper<GraphInfo>
{

    List<GraphVo> selectListByItemTypeAndApartmentId(@Param("itemType") ItemType itemType,
                                                     @Param("apartmentId") Long apartmentId);
}




