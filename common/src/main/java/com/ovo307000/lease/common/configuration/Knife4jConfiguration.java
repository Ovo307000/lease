package com.ovo307000.lease.common.configuration;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springdoc.core.models.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Knife4j 配置类
 * <p>
 * 该类用于配置 Swagger 文档生成的相关信息，包括 API 分组、文档元数据等。
 * Knife4j 是一个基于 Swagger 的 API 文档生成工具，提供了更美观、功能更强大的接口文档。
 */
@Configuration
public class Knife4jConfiguration
{

    /**
     * 定义 Swagger 文档的元数据
     * <p>
     * 该方法创建并配置 OpenAPI 对象，设置 API 文档的基本信息，如标题、版本和描述。
     * 这些信息将显示在 Swagger UI 的顶部，为 API 使用者提供整体概览。
     *
     * @return OpenAPI 对象，包含 API 的元数据
     */
    @Bean
    public OpenAPI customOpenAPI()
    {
        // 创建 Info 对象，设置 API 文档的基本信息
        final Info information = new Info().title("后台管理系统 API")  // 设置 API 文档的标题
                                           .version("1.0")           // 设置 API 的版本号
                                           .description("后台管理系统 API");  // 设置 API 的描述信息

        // 返回配置好的 OpenAPI 对象，将 information 设置为其 info 属性
        return new OpenAPI().info(information);
    }

    /**
     * 配置系统信息管理相关的 API 分组
     * <p>
     * 该方法创建一个 GroupedOpenApi 对象，用于对系统信息管理相关的 API 进行分组。
     * 通过设置组名和路径匹配规则，可以将相关 API 归类到一起，方便文档阅读和管理。
     *
     * @return GroupedOpenApi 对象，包含系统信息管理 API 的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi systemAPI()
    {
        return GroupedOpenApi.builder()
                             .group("系统信息管理")  // 设置分组名称，这将在 Swagger UI 中显示为一个选项
                             .pathsToMatch("/admin/system/**")  // 设置路径匹配规则，只有匹配此规则的接口会被包含在这个分组中
                             .build();  // 构建并返回 GroupedOpenApi 对象
    }

    /**
     * 配置后台登录管理相关的 API 分组
     * <p>
     * 该方法创建一个 GroupedOpenApi 对象，用于对后台登录管理相关的 API 进行分组。
     * 这个分组包含了与登录和用户信息相关的接口。
     *
     * @return GroupedOpenApi 对象，包含后台登录管理 API 的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi loginAPI()
    {
        return GroupedOpenApi.builder()
                             .group("后台登录管理")  // 设置分组名称
                             .pathsToMatch("/admin/login/**", "/admin/info")  // 设置路径匹配规则，包含登录和用户信息相关的路径
                             .build();
    }

    /**
     * 配置公寓信息管理相关的 API 分组
     * <p>
     * 该方法创建一个 GroupedOpenApi 对象，用于对公寓信息管理相关的 API 进行分组。
     * 这个分组包含了与公寓、房间、设施等多个相关方面的接口。
     *
     * @return GroupedOpenApi 对象，包含公寓信息管理 API 的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi apartmentAPI()
    {
        return GroupedOpenApi.builder()
                             .group("公寓信息管理")  // 设置分组名称
                             .pathsToMatch(  // 设置路径匹配规则，包含多个与公寓管理相关的路径
                                     "/admin/apartment/**",
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
     * 配置租赁信息管理相关的 API 分组
     * <p>
     * 该方法创建一个 GroupedOpenApi 对象，用于对租赁信息管理相关的 API 进行分组。
     * 这个分组包含了与预约和协议相关的接口。
     *
     * @return GroupedOpenApi 对象，包含租赁信息管理 API 的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi leaseAPI()
    {
        return GroupedOpenApi.builder()
                             .group("租赁信息管理")  // 设置分组名称
                             .pathsToMatch("/admin/appointment/**", "/admin/agreement/**")  // 设置路径匹配规则，包含预约和协议相关的路径
                             .build();
    }

    /**
     * 配置平台用户管理相关的 API 分组
     * <p>
     * 该方法创建一个 GroupedOpenApi 对象，用于对平台用户管理相关的 API 进行分组。
     * 这个分组包含了与用户管理相关的接口。
     *
     * @return GroupedOpenApi 对象，包含平台用户管理 API 的分组和路径匹配规则
     */
    @Bean
    public GroupedOpenApi userAPI()
    {
        return GroupedOpenApi.builder()
                             .group("平台用户管理")  // 设置分组名称
                             .pathsToMatch("/admin/user/**")  // 设置路径匹配规则，包含用户管理相关的路径
                             .build();
    }
}