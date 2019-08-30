package com.cash.utils;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class changeEmail {


    public static void sendMail(String toMail) throws MessagingException {
        Session session=MailProperties.MailSession();

        //创建邮件
        Message message = new MimeMessage(session);
        //设置fa件人地址
        message.setFrom(new InternetAddress("1125245923@qq.com"));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toMail));
        //设置邮件的主体
        message.setSubject("账户状态改变");
        //设置内容
        String msg = "你的账户状态发生变化";
        message.setContent(msg, "text/html;charset=utf-8");
        //发送邮件
        System.out.println("邮箱可发送");
        Transport.send(message);

    }

}
