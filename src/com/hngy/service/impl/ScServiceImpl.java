package com.hngy.service.impl;

import com.hngy.base.BaseDao;
import com.hngy.base.BaseServiceImpl;
import com.hngy.mapper.ScMapper;
import com.hngy.po.Sc;
import com.hngy.service.ScService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScServiceImpl extends BaseServiceImpl<Sc> implements ScService {

    @Autowired
    private ScMapper scMapper;

    @Override
    public BaseDao<Sc> getBaseDao() {
        return scMapper;
    }
}
