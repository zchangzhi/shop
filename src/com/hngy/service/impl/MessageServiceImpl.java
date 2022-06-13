package com.hngy.service.impl;

import com.hngy.base.BaseDao;
import com.hngy.base.BaseServiceImpl;
import com.hngy.mapper.MessageMapper;
import com.hngy.po.Message;
import com.hngy.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public BaseDao<Message> getBaseDao() {
        return messageMapper;
    }
}
