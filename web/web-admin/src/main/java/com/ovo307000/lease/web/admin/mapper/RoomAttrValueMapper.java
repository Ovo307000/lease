package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ovo307000.lease.module.entity.RoomAttrValue;
import com.ovo307000.lease.web.admin.vo.attr.AttrValueVo;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【room_attr_value(房间&基本属性值关联表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.RoomAttrValue
 */
public interface RoomAttrValueMapper extends BaseMapper<RoomAttrValue>
{

    /**
     * 根据房间ID查询属性值视图对象列表。
     *
     * <p>该方法会根据指定的房间ID，从数据库中查询该房间的所有属性值视图对象列表。
     * 其中每个属性值视图对象包含属性值及其对应的属性key名称。</p>
     *
     * @param roomId 房间ID，用于指定要查询属性值的房间。
     *               房间ID不能为空且不能小于0。
     *
     * @return List<AttrValueVo> 包含属性值对象的列表，
     *         其中属性值对象包含了属性值及其对应的属性key名称。
     *
     * @throws IllegalArgumentException 如果房间ID为null或小于0，
     *                                  抛出非法参数异常。
     *
     * @see AttrValueVo
     */
    List<AttrValueVo> listAttrValueVoByRoomId(Long roomId);
}




