package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.AttrValue;
import com.ovo307000.lease.web.admin.vo.attr.AttrValueVo;

import java.util.List;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【attr_value(房间基本属性值表)】的数据库操作Service
 * @createDate 2023-07-24 15:48:00
 */
public interface AttrValueService extends IService<AttrValue>
{
    /**
     * 异步查询房间基本属性值列表的方法。
     * <p>
     * 该方法根据传入的房间ID，使用CompletableFuture异步地从数据库中查询并返回房间的属性值列表，封装在AttrValueVo对象中。
     *
     * @param roomId 房间ID，表示要查询的房间的唯一标识。
     * @return 一个CompletableFuture对象，包含房间属性值列表，当查询完成时返回一个包含AttrValueVo对象的List。
     */
    CompletableFuture<List<AttrValueVo>> selectListByRoomIdAsync(Long roomId);
}
