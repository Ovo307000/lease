package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.AttrValue;
import com.ovo307000.lease.web.admin.mapper.AttrValueMapper;
import com.ovo307000.lease.web.admin.service.AttrValueService;
import org.springframework.stereotype.Service;

import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【attr_value(房间基本属性值表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
public class AttrValueServiceImpl extends ServiceImpl<AttrValueMapper, AttrValue> implements AttrValueService
{
    public CompletableFuture<Boolean> removeAttrValueByAttrKeyIdAsync(final Long attrKeyId)
    {
        return CompletableFuture.supplyAsync(() -> this.removeById(attrKeyId))
                                .exceptionally(throwable ->
                                {
                                    this.log.error("删除属性值失败", throwable);
                                    throw new RuntimeException("删除属性值失败", throwable);
                                });
    }
}




