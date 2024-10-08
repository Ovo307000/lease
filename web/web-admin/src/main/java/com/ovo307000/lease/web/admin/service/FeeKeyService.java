package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.FeeKey;
import com.ovo307000.lease.web.admin.vo.fee.FeeKeyVo;

import java.util.List;

/**
 * @author liubo
 * @description 针对表【fee_key(杂项费用名称表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface FeeKeyService extends IService<FeeKey>
{
    /**
     * 查询所有杂费名称
     *
     * @return 杂费名称列表
     */
    List<FeeKeyVo> listFeeKeyVo();
}
