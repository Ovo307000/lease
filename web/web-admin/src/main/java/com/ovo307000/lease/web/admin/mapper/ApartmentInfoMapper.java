package com.ovo307000.lease.web.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ovo307000.lease.module.entity.ApartmentInfo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentItemVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentQueryVo;

/**
 * @author liubo
 * @description 针对表【apartment_info(公寓信息表)】的数据库操作Mapper
 * @createDate 2023-07-24 15:48:00
 * @Entity com.ovo307000.lease.module.ApartmentInfo
 */
public interface ApartmentInfoMapper extends BaseMapper<ApartmentInfo>
{
    /**
     * 分页查询公寓物品信息
     *
     * @param page    分页对象，用于指定当前页码和页面大小
     * @param queryVo 查询条件对象，封装了公寓物品的查询参数
     * @return 返回分页查询结果，包含公寓物品信息列表及总记录数等信息
     */
    IPage<ApartmentItemVo> pageItem(Page<ApartmentItemVo> page, ApartmentQueryVo queryVo);
}
