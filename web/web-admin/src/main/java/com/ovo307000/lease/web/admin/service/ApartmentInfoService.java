package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.ApartmentInfo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentItemVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentQueryVo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentSubmitVo;

/**
 * 针对表【apartment_info(公寓信息表)】的数据库操作Service
 * 该接口扩展了IService< ApartmentInfo >，提供了公寓信息的CRUD操作
 * 主要功能包括保存或更新公寓信息、分页查询公寓列表
 *
 * @author liubo
 * @createDate 2023-07-24 15:48:00
 */
public interface ApartmentInfoService extends IService<ApartmentInfo>
{
    /**
     * 保存或更新公寓信息
     * 该方法接收一个ApartmentSubmitVo对象，根据其中的数据来保存或更新公寓信息
     * 使用ApartmentSubmitVo而不是直接使用ApartmentInfo是为了在提交表单时进行更灵活的数据处理
     *
     * @param apartmentSubmitVo 公寓信息提交视图对象，包含了前端提交的公寓信息
     * @return 操作结果，true表示成功，false表示失败
     */
    boolean saveOrUpdateApartment(ApartmentSubmitVo apartmentSubmitVo);

    /**
     * 分页查询公寓列表
     * 该方法支持分页查询，并根据ApartmentQueryVo中的条件进行筛选，返回一个IPage对象
     * 使用Page< ApartmentItemVo >作为分页参数，ApartmentItemVo作为结果项的封装类型
     *
     * @param page    分页对象，包含了分页参数如当前页数和每页大小等
     * @param queryVo 查询条件对象，包含了查询公寓列表的筛选条件
     * @return 公寓列表的分页结果，包含总记录数、当前页数据等信息
     */
    IPage<ApartmentItemVo> pageItem(Page<ApartmentItemVo> page, ApartmentQueryVo queryVo);
}
