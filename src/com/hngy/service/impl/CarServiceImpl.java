package com.hngy.service.impl;

import com.hngy.base.BaseDao;
import com.hngy.base.BaseServiceImpl;
import com.hngy.mapper.CarMapper;
import com.hngy.po.Car;
import com.hngy.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl extends BaseServiceImpl<Car> implements CarService {

    @Autowired
    private CarMapper carMapper;

    @Override
    public BaseDao<Car> getBaseDao() {
        return carMapper;
    }
}
