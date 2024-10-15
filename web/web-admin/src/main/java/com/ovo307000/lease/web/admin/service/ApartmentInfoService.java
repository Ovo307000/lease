package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.ApartmentInfo;
import com.ovo307000.lease.web.admin.vo.apartment.ApartmentSubmitVo;

/**
 * @author liubo
 * @description 针对表【apartment_info(公寓信息表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface ApartmentInfoService extends IService<ApartmentInfo>
{

    boolean saveOrUpdateApartment(ApartmentSubmitVo apartmentSubmitVo);
}
