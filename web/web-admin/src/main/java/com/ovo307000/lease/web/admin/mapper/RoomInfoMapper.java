package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.module.entity.RoomInfo;
import com.ovo307000.lease.web.admin.vo.room.RoomItemVo;
import com.ovo307000.lease.web.admin.vo.room.RoomQueryVo;
import org.apache.ibatis.annotations.Param;

/**
 * @author liubo
 * @description 针对表【room_info(房间信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.RoomInfo
 */
public interface RoomInfoMapper extends BaseMapper<RoomInfo>
{
    /**
     * 分页查询房间信息
     *
     * @param page    分页对象，用于指定当前页码和页面大小
     * @param queryVo 查询条件对象，封装了房间信息的查询参数
     * @return 返回分页查询结果，包含房间信息列表及总记录数等信息
     */
    Page<RoomItemVo> pageItem(@Param("page") Page<RoomItemVo> page, @Param("queryVo") RoomQueryVo queryVo);
}
