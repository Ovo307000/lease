package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.AttrValue;
import com.ovo307000.lease.web.admin.vo.attr.AttrValueVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【attr_value(房间基本属性值表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.AttrValue
 */
public interface AttrValueMapper extends BaseMapper<AttrValue>
{
    /**
     * 根据房间ID查询房间基本属性值列表的方法。
     * <p>
     * 该方法接受一个房间ID参数，并返回与该房间ID相关的所有AttrValueVo对象的列表。每个AttrValueVo对象代表一个房间属性值以及对应的属性键名称。
     *
     * @param roomId 房间ID，表示要查询的房间的唯一标识。
     * @return 包含AttrValueVo对象的列表，表示该房间的所有基本属性值。
     */
    List<AttrValueVo> listAttrValueVoByRoomId(@Param("roomId") Long roomId);
}




