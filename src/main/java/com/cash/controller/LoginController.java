package com.cash.controller;

import com.cash.pojo.Account;
import com.cash.service.AccoutService;
import com.cash.service.ManageService;
import com.cash.utils.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayOutputStream;
import java.io.IOException;


/**
 * @data 2019/7/30  16:18
 */
@Controller
public class LoginController {
    @Autowired
    private AccoutService accoutService;

    @Autowired
    private ManageService manageService;


    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    //注销
    @RequestMapping("/quit")
    public String quit(HttpSession session){


        Account account = (Account) session.getAttribute("loginAccount");
        if (account.getRole().equals("用户"))
        {
            pubMsg.quitTip(account);
        }

        session.removeAttribute("loginAccount");

        return "login";
    }

    @RequestMapping("/account_main")
    public  String accountmain(){
        return "account-main";
    }

    @RequestMapping("/manage_main")
    public  String mnanagemain(){
        return "manage-main";
    }

    @ResponseBody
    @RequestMapping("/doAjaxlogin")
    public Msg doAjaxlogin(Account account,String aName,String aPassword ,HttpSession session,@RequestParam("code")String code) {
        System.out.println(aName);
        System.out.println(aPassword);
        AESOperator aesOperator = AESOperator.getInstance();
        String passwordByAES = aesOperator.encrypt(account.getaPassword());
        account.setaPassword(passwordByAES);


        String verifyCode = (String) session.getAttribute("verifyCode");
        if (!code.equalsIgnoreCase(verifyCode)) {
            return Msg.fail().Add("msg", "验证码错误！");
        }
        Account dbaccount = accoutService.query4login(account);
        System.out.println(dbaccount);
        //System.out.println(dbaccount.getaName());
        if (dbaccount != null) {
            if (dbaccount.getActive().equals("1")||dbaccount.getRole().equals("管理员")){ //将拿到的数据放在session层，方便页面的使用
                session.setAttribute("loginAccount", dbaccount);
                pubMsg.loginTip(dbaccount);
                return Msg.success().Add("account", dbaccount);
            }
            else {
                return Msg.fail().Add("msg","账户未激活");
            }

        } else {
            return Msg.fail().Add("msg","用户名密码错误");
        }

    }



    @RequestMapping("/gocode")
    public String goCode()
    {
        return "code";
    }

    /**
     * @description: 获取验证码
     * @version: 1.0
     * @date: 2019/8/13 11:03
     * @author: SunHu
     *
     * @param response
 * @param session
     * @return void
     * @throws
     */
    @RequestMapping("/getVerifyCode")
    public void generate(HttpServletResponse response, HttpSession session) {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        CodeUtil codeUtil = new CodeUtil();
        String verifyCodeValue = codeUtil.drawImg(output);
        System.out.println(verifyCodeValue);
        session.setAttribute("verifyCode", verifyCodeValue);
        try {
            ServletOutputStream out = response.getOutputStream();
            output.writeTo(out);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/login_sub", method = RequestMethod.POST)
    @ResponseBody
    public Msg login_sub(HttpSession session, @RequestParam("code") String code) {
        String verifyCode = (String) session.getAttribute("verifyCode");
        if (!code.equalsIgnoreCase(verifyCode)) {
            return Msg.fail().Add("msg", "验证码错误！");
        }
             else {
                return Msg.success().Add("msg", "验证码正确！");
            }
        }

    }

