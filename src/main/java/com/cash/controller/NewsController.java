package com.cash.controller;


import com.cash.pojo.News;
import com.cash.service.NewsService;
import com.cash.utils.Msg;
import com.cash.utils.pubMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping("/get_all_news")
    public String getAllNews(Model model){

        List<News> newsList = newsService.getAllNews();
        int i = newsService.countNews();
        model.addAttribute("newsList",newsList);
        model.addAttribute("count",i);
        return "news_list";
    }

    @RequestMapping("/get_all_news_user")
    public String getAllNewsUser(Model model){

        List<News> newsList = newsService.getAllNews();
        int i = newsService.countNews();
        model.addAttribute("newsList",newsList);
        model.addAttribute("count",i);
        return "news_list_user";
    }

    @RequestMapping("/get_news_detail")
    public String getNewsdetail(Integer nId,Model model)
    {
        News news = newsService.getOne(nId);

        model.addAttribute("news",news);

        return "news_detail2";
    }
    @RequestMapping("/get_news_detail_user")
    public String getNewsdetailUser(Integer nId,Model model)
    {
        News news = newsService.getOne(nId);

        model.addAttribute("news",news);

        return "news_detail_user";
    }

    @RequestMapping("/go_add_news")
    public  String goaAddNews(){
        return "news_add";
    }

    @RequestMapping("/add_news")
    public String addNews(News news, MultipartFile upload, HttpServletRequest request) throws IOException {

        System.out.println("SpringMVC方式上传...");
        String filename = upload.getOriginalFilename();
        if (filename=="")
        {
            news.setnImg("9.png");
        }else{
            //获取文件上传的目录
            String path = request.getSession().getServletContext().getRealPath("/uploads");
            System.out.println(path);
            //创建File对象，向该路径下上传
            File file=new File(path);
            //判断路径是否存在，不存在就创建路径
            if (!file.exists()){
                System.out.println("目录不存在");
                file.mkdirs();
            }
            //获取文件名称

            //名称唯一化
            String uuid = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
            filename=uuid+"-"+filename;
            //上传文件
            upload.transferTo(new File(file,filename));
            System.out.println(filename);
            // 保存到数据库
            news.setnImg(filename);
        }




        news.setnDate(new Date());
        newsService.insertSelective(news);
        System.out.println(news.getnId());
        pubMsg.sendMessage(news);


        return "redirect:/news/get_all_news";
    }

    //删除新闻
    @RequestMapping("/delete_news")
    @ResponseBody
    public Msg deleteNews(@RequestParam(value = "nId") Integer nId){

        System.out.println(nId);
        int i = newsService.deleteNews(nId);
        if (i!=0)
        {
            return Msg.Success();

        }else {
            return Msg.Fail();
        }


    }


    @RequestMapping("/go_update_news")
    public String goUpdateNews(Model model,Integer nId){

        News news = newsService.getOne(nId);
        model.addAttribute("news",news);

        return "news_update";
    }


    @RequestMapping("/update_news")
    public String updateNews(News news,MultipartFile upload,HttpServletRequest request) throws IOException {

        String filename = upload.getOriginalFilename();
        if (filename=="")
        {
            System.out.println("文件美白");
        }else{
            System.out.println(filename);
            //获取文件上传的目录
            String path = request.getSession().getServletContext().getRealPath("/uploads");
            System.out.println(path);
            //创建File对象，向该路径下上传
            File file=new File(path);
            //判断路径是否存在，不存在就创建路径
            if (!file.exists()){
                System.out.println("目录不存在");
                file.mkdirs();
            }
            //获取文件名称

            //名称唯一化
            String uuid = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
            filename=uuid+"-"+filename;
            //上传文件
            upload.transferTo(new File(file,filename));
            System.out.println(filename);
            // 保存到数据库
            news.setnImg(filename);


        }



        news.setnDate(new Date());
        System.out.println(news);


        int i = newsService.updateByPrimaryKeySelective(news);

        return "redirect:/news/get_all_news";
    }




    @RequestMapping("/sendmsg")
    public String testmsg(){
        News news=new News();
        news.setnId(10);
        news.setnTitle("测试");
        news.setnSummary("这是一条测试新闻");
        pubMsg.sendMessage(news);
        return "redirect:/news/get_all_news";
    }



}
