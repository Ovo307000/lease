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

    /**
     * 根据物品类型和公寓ID查询图片信息列表。
     *
     * @param itemType 物品类型，枚举类型 {@link ItemType}，表示查询的图片关联的物品类型。
     * @param apartmentId 公寓ID，表示查询的图片关联的公寓的唯一标识符。
     *
     * @return 返回包含匹配图片信息的 {@link GraphVo} 列表。
     */
    List<GraphVo> selectListByItemTypeAndApartmentId(@Param("itemType") ItemType itemType,
                                                     @Param("apartmentId") Long apartmentId);
}
