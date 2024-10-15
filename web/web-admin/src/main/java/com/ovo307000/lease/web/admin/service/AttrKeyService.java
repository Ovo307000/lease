package com.ovo307000.lease.web.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ovo307000.lease.module.entity.AttrKey;
import com.ovo307000.lease.web.admin.vo.attr.AttrKeyVo;

import java.util.List;

/**
 * AttrKeyService 接口
 * 负责房间基本属性表（attr_key）的数据库操作
 * 继承自 MyBatis-Plus 的 IService 接口
 *
 * @author liubo
 * @createDate 2023-07-24 15:48:00
 */
public interface AttrKeyService extends IService<AttrKey>
{

    /**
     * 获取属性键值对象列表
     *
     * @return 属性键值对象列表
     */
    List<AttrKeyVo> listAttrKeyVo();
}