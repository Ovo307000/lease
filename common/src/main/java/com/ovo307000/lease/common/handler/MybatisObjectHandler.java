package com.ovo307000.lease.common.handler;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.Date;

/**
 * 自定义MybatisPlus元对象处理器
 * 用于自动填充实体类中的字段，例如创建时间和更新时间
 */
@Component
public class MybatisObjectHandler implements MetaObjectHandler
{

    /**
     * 插入前自动填充创建时间
     * 将当前时间自动设置为实体类的创建时间字段
     *
     * @param metaObject 元对象，代表待插入的实体类
     */
    @Override
    public void insertFill(final MetaObject metaObject)
    {
        this.strictInsertFill(metaObject, "createTime", Date.class, new Date());
        this.strictInsertFill(metaObject, "updateTime", Date.class, new Date());
    }

    /**
     * 更新前自动填充更新时间
     * 将当前时间自动设置为实体类的更新时间字段
     *
     * @param metaObject 元对象，代表待更新的实体类
     */
    @Override
    public void updateFill(final MetaObject metaObject)
    {
        this.strictUpdateFill(metaObject, "updateTime", Date.class, new Date());
    }
}
