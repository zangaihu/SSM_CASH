package com.cash.mapper;

import com.cash.pojo.Manage;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface ManageMapper {
    int deleteByPrimaryKey(Integer mId);

    int insert(Manage record);

    int insertSelective(Manage record);

    Manage selectByPrimaryKey(Integer mId);

    int updateByPrimaryKeySelective(Manage record);

    int updateByPrimaryKey(Manage record);


    @Select("select * from manage where m_name=#{Name} and m_password=#{Password}")
    Manage getOne(String Name,String Password);
}