package com.cash.utils;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import java.util.Properties;

public class MailProperties {

    public static  Session MailSession()
    {

        //设置邮件服务器
        Properties properties = new Properties();
        //可以设置邮件服务器
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.host", "smtp.qq.com");

        //与邮件服务器的连接
        Session session = Session.getInstance(properties, new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("1125245923@qq.com", "ditbiennromtjjgf");
            }
        });
        session.setDebug(true);

        return session;
    }


}
