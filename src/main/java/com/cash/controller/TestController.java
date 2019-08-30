package com.cash.controller;


import com.cash.utils.Msg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @RequestMapping("/goEasy")
    @ResponseBody
    public Msg test() {

      /*  GoEasy goEasy = new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");

        goEasy.publish("新闻","你有一条未读新闻", new PublishListener(){
            @Override
            public void onSuccess() {
                System.out.println("消息发布成功。");
            }
            @Override
            public void onFailed(GoEasyError error) {
                System.out.println("消息发布失败, 错误编码：" + error.getCode() + " 错误信息： " + error.getContent());
            }
        });*/

        //pubMsg.sendMessage(news);

        return Msg.Success();
    }
    @RequestMapping("/hello")
    public String test1() {
    return "hello";

    }
}
