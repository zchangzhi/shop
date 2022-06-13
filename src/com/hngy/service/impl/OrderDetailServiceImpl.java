package com.hngy.service.impl;

import com.hngy.base.BaseDao;
import com.hngy.base.BaseServiceImpl;
import com.hngy.mapper.OrderDetailMapper;
import com.hngy.po.OrderDetail;
import com.hngy.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail> implements OrderDetailService {
    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Override
    public BaseDao<OrderDetail> getBaseDao() {
        return orderDetailMapper;
    }
}
