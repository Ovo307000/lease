package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.GraphInfo;
import com.ovo307000.lease.module.enums.ItemType;
import com.ovo307000.lease.web.admin.mapper.GraphInfoMapper;
import com.ovo307000.lease.web.admin.service.GraphInfoService;
import com.ovo307000.lease.web.admin.vo.graph.GraphVo;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【graph_info(图片信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class GraphInfoServiceImpl extends ServiceImpl<GraphInfoMapper, GraphInfo> implements GraphInfoService
{

    /**
     * 异步获取根据物品类型和公寓ID的图片信息列表。
     * <p>
     * 该方法根据物品类型和公寓ID，异步查询并返回相应的图片信息列表，每个图片信息通过 {@link GraphVo} 对象表示。
     *
     * @param itemType    物品类型，枚举类型 {@link ItemType}，表示查询的图片关联的物品类型。
     * @param apartmentId 公寓ID，表示查询的图片关联的公寓的唯一标识符，不能为null且必须大于等于0。
     * @return 包含图片信息对象 {@link GraphVo} 列表的异步操作结果 {@link CompletableFuture}。
     * @throws IllegalArgumentException 如果物品类型为null或公寓ID为null或公寓ID小于0。
     */
    public CompletableFuture<List<GraphVo>> selectListByItemTypeAndApartmentIdAsync(final ItemType itemType,
                                                                                    final Long apartmentId)
    {
        if (itemType == null || apartmentId == null || apartmentId < 0)
        {
            throw new IllegalArgumentException("查询图片信息列表时，物品类型和公寓ID不能为空且公寓ID不能小于0");
        }

        return CompletableFuture.supplyAsync(() -> this.baseMapper.selectListByItemTypeAndApartmentId(itemType,
                apartmentId));
    }
}




