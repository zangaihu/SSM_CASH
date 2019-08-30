package com.cash.mapper;

import com.cash.pojo.News;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;


@MapperScan
public interface NewsMapper {
    int deleteByPrimaryKey(Integer nId);

    int insert(News record);



    News selectByPrimaryKey(Integer nId);



    int updateByPrimaryKeyWithBLOBs(News record);

    int updateByPrimaryKey(News record);



    @Select("select * from news order by n_date desc ")
    List<News> getAllNews();

    @Select("select * from  news where n_id=#{nId} ")
    News getOne(Integer nId);


    int insertSelective(News news);

    @Delete("delete from news where n_id=#{nId} ")
    int deleteNews(int nId);

    int updateByPrimaryKeySelective(News news);

    @Select("select COUNT(*) from news")
    int countNews();



}