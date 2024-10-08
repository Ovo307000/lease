package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.AttrKey;
import com.ovo307000.lease.web.admin.mapper.AttrKeyMapper;
import com.ovo307000.lease.web.admin.service.AttrKeyService;
import com.ovo307000.lease.web.admin.vo.attr.AttrKeyVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
@RequiredArgsConstructor
public class AttrKeyServiceImpl extends ServiceImpl<AttrKeyMapper, AttrKey> implements AttrKeyService
{
    private final AttrKeyMapper        attrKeyMapper;
    private final AttrValueServiceImpl attrValueServiceImpl;

    public List<AttrKeyVo> listAttrKeyVo()
    {
        return this.attrKeyMapper.listAttrInformation();
    }

    /**
     * 逻辑删除键和值的异步方法
     * 此方法使用事务注解，确保删除操作的原子性，如果发生异常，事务将回滚
     * 它异步删除具有给定ID的键和值，并在删除完成后返回一个布尔值表示删除是否成功
     *
     * @param id 要删除的键和值的ID
     * @return CompletableFuture<Boolean> 表示删除是否成功的异步结果
     */
    @Transactional(rollbackFor = Exception.class)
    public CompletableFuture<Boolean> logicRemoveKeyAndValueAsync(final Long id)
    {
        final CompletableFuture<Boolean> removeKeyFuture   = this.removeAttrKeyAsync(id);
        final CompletableFuture<Boolean> removeValueFuture = this.attrValueServiceImpl.removeAttrValueByAttrKeyIdAsync(
                id);

        // 等待所有Future完成，并且在它们都完成后，返回一个Future，该Future的结果是所有删除操作都成功与否的逻辑与
        return CompletableFuture.allOf(removeKeyFuture, removeValueFuture)
                                // 假设 removeKeyFuture 和 removeValueFuture 都成功完成，则返回 true，否则返回 false
                                // 只要有一个删除操作失败，就返回 false
                                .thenApplyAsync(unused -> removeKeyFuture.join() && removeValueFuture.join());
    }

    private CompletableFuture<Boolean> removeAttrKeyAsync(@NonNull final Long id)
    {
        return CompletableFuture.supplyAsync(() -> this.removeById(id))
                                .exceptionally(throwable ->
                                {
                                    log.error("删除属性键失败", throwable);
                                    throw new RuntimeException("删除属性键失败", throwable);
                                });
    }
}