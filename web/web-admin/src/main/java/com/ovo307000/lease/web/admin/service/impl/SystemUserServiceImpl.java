package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.common.properties.auth.JWTProperties;
import com.ovo307000.lease.common.utils.JWTUtils;
import com.ovo307000.lease.module.entity.SystemPost;
import com.ovo307000.lease.module.entity.SystemUser;
import com.ovo307000.lease.web.admin.mapper.SystemUserMapper;
import com.ovo307000.lease.web.admin.service.SystemUserService;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserInfoVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserItemVo;
import com.ovo307000.lease.web.admin.vo.system.user.SystemUserQueryVo;
import io.jsonwebtoken.Claims;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.concurrent.CompletableFuture;

/**
 * @author liubo
 * @description 针对表【system_user(员工信息表)】的数据库操作Service实现
 * @createDate 2023-07-24 15:48:00
 */
@Service
@RequiredArgsConstructor
public class SystemUserServiceImpl extends ServiceImpl<SystemUserMapper, SystemUser> implements SystemUserService
{
    private final SystemPostServiceImpl systemPostServiceImpl;
    private final JWTProperties         jWTProperties;

    /**
     * 根据条件分页查询后台用户列表
     * <p>
     * 该方法接受当前页码、页大小和查询条件对象作为参数，返回一个包含后台用户信息的分页结果
     * </p>
     *
     * @param page    分页对象
     * @param queryVo 查询条件对象
     * @return 包含后台用户信息的分页结果
     */
    @Override
    public IPage<SystemUserItemVo> pageSystemUser(final Page<SystemUserItemVo> page, final SystemUserQueryVo queryVo)
    {
        return this.baseMapper.pageSystemUser(page, queryVo);
    }

    /**
     * 根据id查询后台用户信息
     * <p>
     * 该方法异步地从数据库中获取 SystemUser 和 SystemPost 信息，最后合并结果并返回一个 SystemUserItemVo 对象
     * </p>
     *
     * @param id 后台用户id
     * @return SystemUserItemVo
     */
    @Override
    public SystemUserItemVo getSystemUserItemVoById(final Long id)
    {
        // 异步获取 SystemUser
        final CompletableFuture<SystemUser> systemUserFuture = CompletableFuture.supplyAsync(() -> this.baseMapper.selectById(
                id));

        // 异步获取 SystemPost ！！ 注意这里的 thenCompose 和 thenCombine 用法，Compose 用于串行，Combine 用于并行
        // 也就是说，Compose 会等待第一个异步任务完成后再执行第二个异步任务，而 Combine 会并行执行两个异步任务
        final CompletableFuture<SystemPost> systemPostFuture = systemUserFuture.thenCompose(systemUser ->
        {
            final LambdaQueryWrapper<SystemPost> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(SystemPost::getId, systemUser.getPostId());
            return CompletableFuture.supplyAsync(() -> this.systemPostServiceImpl.getOne(queryWrapper));
        });

        // 合并结果
        // 此处的 thenCombine 的第二个 lambda 表达式中的两个参数分别是两个异步任务的结果，第二个的参数由 thenCombine 的第一个参数决定
        final SystemUserItemVo systemUserItemVo = new SystemUserItemVo();
        return systemUserFuture.thenCombine(systemPostFuture, (systemUser, systemPost) ->
                               {
                                   BeanUtils.copyProperties(systemUser, systemUserItemVo);
                                   systemUserItemVo.setPostName(systemPost.getName());
                                   return systemUserItemVo;
                               })
                               .join();
    }

    @Override
    public SystemUserInfoVo getLoggedUserInfoByToken(final String token)
    {
        final Claims claims = JWTUtils.parseJWTToken(token, this.jWTProperties.getSecret());

        final Long userId = Optional.ofNullable(claims.get("userId", Long.class))
                                    .orElseThrow(() -> new IllegalArgumentException("无效的用户信息"));

        final SystemUser systemUser = Optional.ofNullable(this.baseMapper.selectById(userId))
                                              .orElseThrow(() -> new IllegalArgumentException("用户不存在"));

        final SystemUserInfoVo systemUserInfoVo = new SystemUserInfoVo();
        BeanUtils.copyProperties(systemUser, systemUserInfoVo);

        return systemUserInfoVo;
    }
}
