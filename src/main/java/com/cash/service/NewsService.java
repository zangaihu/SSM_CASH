package com.cash.service;

import com.cash.pojo.News;

import java.util.List;

public interface NewsService {


    List<News> getAllNews();

    News getOne(Integer nId);



    int insertSelective(News news);

    int deleteNews(int nId);

    int updateByPrimaryKeySelective(News news);

    int countNews();
}
