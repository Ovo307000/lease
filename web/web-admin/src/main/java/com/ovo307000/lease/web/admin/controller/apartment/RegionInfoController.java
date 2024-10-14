package com.ovo307000.lease.web.admin.controller.apartment;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.common.result.ResultCodeEnum;
import com.ovo307000.lease.module.entity.CityInfo;
import com.ovo307000.lease.module.entity.DistrictInfo;
import com.ovo307000.lease.module.entity.ProvinceInfo;
import com.ovo307000.lease.web.admin.service.impl.CityInfoServiceImpl;
import com.ovo307000.lease.web.admin.service.impl.DistrictInfoServiceImpl;
import com.ovo307000.lease.web.admin.service.impl.ProvinceInfoServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 地区信息控制器
 * 负责处理与省份、城市和区县信息相关的请求
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@Tag(name = "地区信息管理")
@RequestMapping("/admin/region")
public class RegionInfoController
{
    private final ProvinceInfoServiceImpl provinceInfoServiceImpl;
    private final CityInfoServiceImpl     cityInfoServiceImpl;
    private final DistrictInfoServiceImpl districtInfoServiceImpl;

    /**
     * 查询省份信息列表
     *
     * @return 省份信息列表
     */
    @Operation(summary = "查询省份信息列表")
    @GetMapping("province/list")
    public Result<List<ProvinceInfo>> listProvince()
    {
        log.info("查询省份信息列表");

        final List<ProvinceInfo> provinceInfoList = this.provinceInfoServiceImpl.list();

        return provinceInfoList.isEmpty() ? Result.failure(ResultCodeEnum.NO_FOUND) : Result.success(provinceInfoList);
    }

    /**
     * 根据省份id查询城市信息列表
     *
     * @param id 省份id
     * @return 城市信息列表
     */
    @Operation(summary = "根据省份id查询城市信息列表")
    @GetMapping("city/listByProvinceId")
    public Result<List<CityInfo>> listCityInfoByProvinceId(@RequestParam final Long id)
    {
        log.info("根据省份id查询城市信息列表: {}", id);

        final LambdaQueryWrapper<CityInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(CityInfo::getProvinceId, id);

        final List<CityInfo> cityInfoList = this.cityInfoServiceImpl.list(queryWrapper);

        return cityInfoList.isEmpty() ? Result.failure(ResultCodeEnum.NO_FOUND) : Result.success(cityInfoList);
    }

    /**
     * 根据城市id查询区县信息
     *
     * @param id 城市id
     * @return 区县信息列表
     */
    @GetMapping("district/listByCityId")
    @Operation(summary = "根据城市id查询区县信息")
    public Result<List<DistrictInfo>> listDistrictInfoByCityId(@RequestParam final Long id)
    {
        log.info("根据城市id查询区县信息: {}", id);

        final LambdaQueryWrapper<DistrictInfo> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(DistrictInfo::getCityId, id);

        final List<DistrictInfo> districtInfoList = this.districtInfoServiceImpl.list(queryWrapper);

        return districtInfoList.isEmpty() ? Result.failure(ResultCodeEnum.NO_FOUND) : Result.success(districtInfoList);
    }
}
