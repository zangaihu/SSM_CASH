package com.cash.service.impl;

import com.cash.mapper.NewsMapper;
import com.cash.pojo.News;
import com.cash.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    public List<News> getAllNews() {
        return newsMapper.getAllNews();
    }

    public News getOne(Integer nId) {
        return newsMapper.getOne(nId);
    }

    //添加新闻
    public int insertSelective(News news) {



        return newsMapper.insertSelective(news);
    }
    //删除新闻
    public int deleteNews(int nId) {
        return newsMapper.deleteNews(nId);
    }

    public int updateByPrimaryKeySelective(News news) {
        return newsMapper.updateByPrimaryKeySelective(news);
    }

    public int countNews() {
        return newsMapper.countNews();
    }
}
