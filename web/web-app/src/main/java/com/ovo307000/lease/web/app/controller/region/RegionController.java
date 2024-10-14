package com.ovo307000.lease.web.app.controller.region;


import com.ovo307000.lease.common.result.Result;
import com.ovo307000.lease.module.entity.CityInfo;
import com.ovo307000.lease.module.entity.DistrictInfo;
import com.ovo307000.lease.module.entity.ProvinceInfo;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Tag(name = "地区信息")
@RestController
@RequestMapping("/app/region")
public class RegionController
{

    @Operation(summary = "查询省份信息列表")
    @GetMapping("province/list")
    public Result<List<ProvinceInfo>> listProvince()
    {
        return Result.success();
    }

    @Operation(summary = "根据省份id查询城市信息列表")
    @GetMapping("city/listByProvinceId")
    public Result<List<CityInfo>> listCityInfoByProvinceId(@RequestParam final Long id)
    {
        return Result.success();
    }

    @GetMapping("district/listByCityId")
    @Operation(summary = "根据城市id查询区县信息")
    public Result<List<DistrictInfo>> listDistrictInfoByCityId(@RequestParam final Long id)
    {
        return Result.success();
    }
}
