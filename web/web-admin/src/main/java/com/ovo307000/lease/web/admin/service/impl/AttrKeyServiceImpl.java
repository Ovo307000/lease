package com.ovo307000.lease.web.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ovo307000.lease.module.entity.AttrKey;
import com.ovo307000.lease.web.admin.mapper.AttrKeyMapper;
import com.ovo307000.lease.web.admin.service.AttrKeyService;
import com.ovo307000.lease.web.admin.vo.attr.AttrKeyVo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class AttrKeyServiceImpl extends ServiceImpl<AttrKeyMapper, AttrKey> implements AttrKeyService
{
    private final AttrKeyMapper        attrKeyMapper;

    public List<AttrKeyVo> listAttrKeyVo()
    {
        return this.attrKeyMapper.listAttrInformation();
    }
}