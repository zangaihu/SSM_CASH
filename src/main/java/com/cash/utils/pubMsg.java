package com.cash.utils;


import com.cash.pojo.Account;
import com.cash.pojo.News;
import io.goeasy.GoEasy;
import io.goeasy.publish.GoEasyError;
import io.goeasy.publish.PublishListener;

public class pubMsg {




    /*
    * 推送新闻
    * */
     public static void sendMessage(News news)
     {

         GoEasy goEasy = new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");
         goEasy.publish("已开户",news.toString(), new PublishListener(){
             @Override
             public void onSuccess() {
                 System.out.println("消息发布成功。");
             }
             @Override
             public void onFailed(GoEasyError error) {
                 System.out.print("消息发布失败, 错误编码：" + error.getCode() + " 错误信息： " + error.getContent());
             }
         });
     }
     /*
     * 通知用户
     * */
     public static void sendStateMessage(Integer aId)
     {

         String s = aId.toString();
         System.out.println(s);
         System.out.println(s.getClass());
         GoEasy goEasy = new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");
         goEasy.publish(s,"你的账户状态已改变");

     }
    /*
    * 申请解封，开户 通知
    * */
    public static void sendApplyMessage(String  aName,String astate)
    {



        GoEasy goEasy = new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");
        if (astate.equals("冻结"))
        {
            goEasy.publish("申请",aName+"申请解封");
        }else
        {
            goEasy.publish("申请",aName+"申请开户");
        }


    }

    /*
    * 登录，退出通知
    * */
    public static void loginTip(Account account){
         GoEasy goEasy=new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");
         goEasy.publish("登录",account.getaName()+"上线了");

     }
    public static void quitTip(Account account){
         GoEasy goEasy=new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");
         goEasy.publish("退出",account.getaName()+"退出了");

    }


    public static void transferTip(Account inaccount,Account outaccount,Long money){
         GoEasy goEasy=new GoEasy("http://rest-hangzhou.goeasy.io", "BC-acceba1db96d4f80a9e439e86b4c3600");
         goEasy.publish(inaccount.getaId().toString(),outaccount.getaName()+"向你转账了"+money);

    }
}
