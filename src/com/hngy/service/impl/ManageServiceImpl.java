package com.hngy.service.impl;

import com.hngy.base.BaseDao;
import com.hngy.base.BaseServiceImpl;
import com.hngy.mapper.ManageMapper;
import com.hngy.po.Manage;
import com.hngy.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageServiceImpl extends BaseServiceImpl<Manage> implements ManageService {
    @Autowired
    ManageMapper manageMapper;

    @Override
    public BaseDao<Manage> getBaseDao() {
        return manageMapper;
    }
}
