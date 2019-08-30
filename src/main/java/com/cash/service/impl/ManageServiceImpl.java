package com.cash.service.impl;

import com.cash.mapper.ManageMapper;
import com.cash.pojo.Manage;
import com.cash.service.ManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageServiceImpl implements ManageService {
    @Autowired
    private ManageMapper manageMapper;

    public Manage getOne(String Name, String Password) {
        return manageMapper.getOne(Name,Password);
    }
}
