package com.cash.service;

import com.cash.pojo.Record;

import java.util.List;

/**
 * @data 2019/8/1  11:52
 */
public interface RecordService {
    List<Record> queryallRecord(Integer id);

    void insertRecord(Record record);
}
