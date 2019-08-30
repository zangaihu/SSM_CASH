package com.cash.mapper;

import com.cash.pojo.Record;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface RecordMapper {
    //int insert(Record record);

    //int insertSelective(Record record);

    @Select("select * from deal_record  where d_account=#{id} order by d_time desc")
    List<Record> queryallRecord(Integer id);

    void insertRecord(Record record);
}