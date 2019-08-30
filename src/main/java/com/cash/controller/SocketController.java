package com.cash.controller;


import com.cash.websocket.SocketHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class SocketController{

    @Autowired
    private SocketHandler socketHandler;

    @RequestMapping("/start")
    public String start(HttpServletRequest request, HttpServletResponse response) {

        return "home";
    }
    @RequestMapping("/websocket/login")
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        System.out.println(username+"登录");
        HttpSession session = request.getSession(false);
        session.setAttribute("SESSION_USERNAME", username);
        //response.sendRedirect("/quicksand/jsp/websocket.jsp");
        return new ModelAndView("message");
    }

    @RequestMapping("/send")
    public String send(HttpServletRequest request) {
        String username = request.getParameter("username");
        System.out.println(username);
        socketHandler.sendMessageToUser(username, new TextMessage("你好，测试！！！！"));
        return "message";
    }


}