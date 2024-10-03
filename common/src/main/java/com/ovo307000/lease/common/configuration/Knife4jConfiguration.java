package com.ovo307000.lease.common.configuration;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springdoc.core.models.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 配置Swagger文档生成的相关信息
 */
@Configuration
public class Knife4jConfiguration
{
    /**
     * 定义Swagger文档的元数据，如标题、版本和描述
     *
     * @return OpenAPI对象，包含API的元数据
     */
    @Bean
    public OpenAPI customOpenAPI()
    {

        return new OpenAPI().info(new Info().title("后台管理系统API")
                                            .version("1.0")
                                            .description("后台管理系统API"));
    }

    /**
     * 配置系统信息管理相关的API分组
     *
     * @return GroupedOpenApi对象，包含系统信息管理API的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi systemAPI()
    {

        return GroupedOpenApi.builder()
                             .group("系统信息管理")
                             .pathsToMatch("/admin/system/**")
                             .build();
    }

    /**
     * 配置后台登录管理相关的API分组
     *
     * @return GroupedOpenApi对象，包含后台登录管理API的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi loginAPI()
    {

        return GroupedOpenApi.builder()
                             .group("后台登录管理")
                             .pathsToMatch("/admin/login/**", "/admin/info")
                             .build();
    }

    /**
     * 配置公寓信息管理相关的API分组
     *
     * @return GroupedOpenApi对象，包含公寓信息管理API的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi apartmentAPI()
    {

        return GroupedOpenApi.builder()
                             .group("公寓信息管理")
                             .pathsToMatch("/admin/apartment/**",
                                           "/admin/room/**",
                                           "/admin/label/**",
                                           "/admin/facility/**",
                                           "/admin/fee/**",
                                           "/admin/attr/**",
                                           "/admin/payment/**",
                                           "/admin/region/**",
                                           "/admin/term/**",
                                           "/admin/file/**")
                             .build();
    }

    /**
     * 配置租赁信息管理相关的API分组
     *
     * @return GroupedOpenApi对象，包含租赁信息管理API的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi leaseAPI()
    {
        return GroupedOpenApi.builder()
                             .group("租赁信息管理")
                             .pathsToMatch("/admin/appointment/**", "/admin/agreement/**")
                             .build();
    }

    /**
     * 配置平台用户管理相关的API分组
     *
     * @return GroupedOpenApi对象，包含平台用户管理API的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi userAPI()
    {
        return GroupedOpenApi.builder()
                             .group("平台用户管理")
                             .pathsToMatch("/admin/user/**")
                             .build();
    }
}
