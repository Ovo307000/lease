package com.ovo307000.lease.web.admin.costom.configuration;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * MybatisPlus配置类
 * 主要用于配置MybatisPlus的分页插件
 */
@Configuration
@MapperScan("com.ovo307000.lease.web.admin.mapper")
public class MybatisPlusConfiguration
{
    /**
     * 配置MybatisPlusInterceptor
     * 主要用于添加分页插件，以简化分页查询的代码
     *
     * @return 配置好的MybatisPlusInterceptor实例
     */
    @Bean
    public MybatisPlusInterceptor mybatisPlusInterceptor()
    {
        final MybatisPlusInterceptor     interceptor                = new MybatisPlusInterceptor();
        final PaginationInnerInterceptor paginationInnerInterceptor = new PaginationInnerInterceptor(DbType.MYSQL);

        // 设置最大分页限制，默认为1000L，防止出现内存溢出
        paginationInnerInterceptor.setMaxLimit(1000L);
        // 将分页插件添加到MybatisPlusInterceptor中
        interceptor.addInnerInterceptor(paginationInnerInterceptor);

        return interceptor;
    }
}
