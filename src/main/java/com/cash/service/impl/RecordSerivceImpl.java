package com.cash.service.impl;

import com.cash.mapper.RecordMapper;
import com.cash.pojo.Record;
import com.cash.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @data 2019/8/1  11:53
 */
@Service
public class RecordSerivceImpl implements RecordService {
    @Autowired
    private RecordMapper recordMapper;

    public List<Record> queryallRecord(Integer id){
        return recordMapper.queryallRecord(id);
    }

    public void insertRecord(Record record){
        recordMapper.insertRecord(record);
    }

}
