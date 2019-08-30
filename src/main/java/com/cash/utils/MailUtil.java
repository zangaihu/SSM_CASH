package com.cash.utils;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil {

  /*  private enum DeliveredState {
 INITIAL, MESSAGE_DELIVERED, MESSAGE_NOT_DELIVERED, MESSAGE_PARTIALLY_DELIVERED,
                }
private static class DeliveredStateFuture {
    private DeliveredState state = DeliveredState.INITIAL;
    synchronized void waitForReady() throws InterruptedException {
        if (state == DeliveredState.INITIAL) {
                wait();
         }
    }
     synchronized DeliveredState getState() {
            return state;
     }
     synchronized void setState(DeliveredState newState) {
        state = newState;
         notifyAll();
    }
    }
*/

    public static void sendMail(String toMail, String code) throws MessagingException {
        //设置邮件服务器
            Session session=MailProperties.MailSession();


                //创建邮件
                Message message = new MimeMessage(session);
                 //设置fa件人地址
                message.setFrom(new InternetAddress("1125245923@qq.com"));
                message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
                //设置邮件的主体
                message.setSubject("激活邮件");
                //设置内容
                String msg = "<h1>点击<a href='http://localhost:8080/activate?code=" + code + "'>此处</a>激活账户<h1>";
                message.setContent(msg, "text/html;charset=utf-8");
                //发送邮件
                System.out.println("邮箱可发送");
                Transport.send(message);






 }



}
