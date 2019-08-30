package com.cash.controller;

import com.cash.pojo.Account;
import com.cash.service.AccoutService;
import com.cash.utils.AESOperator;
import com.cash.utils.Msg;
import com.cash.utils.RandomCreditCardNumberGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.UUID;

/**
 * @data 2019/7/31  9:58
 */

@Controller
public class RegisterController {
    @Autowired
    private AccoutService accoutService;

    @RequestMapping("/register")
    public String login() {
        return "register";
    }

    @ResponseBody
    @RequestMapping("/Regist")
    public Msg regist(Account account, HttpSession session, HttpServletResponse response, Model model) throws Exception {
        System.out.println(account.getaName());
        String brankNumber = RandomCreditCardNumberGenerator.getBrankNumber("8");
        Account dbaccount = accoutService.query4Regist(account);
        if (dbaccount !=null){
            String errorMsg ="该用户名已经存在，请重新输入用户名";
            System.out.println(errorMsg);
            session.setAttribute("errorMsg",errorMsg);
            return Msg.fail();
        }else {
            //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
            String code= UUID.randomUUID().toString().replaceAll("-","");

            AESOperator aesOperator = AESOperator.getInstance();
            String passwordByAES=aesOperator.encrypt(account.getaPassword());
            account.setaPassword(passwordByAES);
            account.setCreatetime(new Date());
            account.setaNumber(brankNumber);
            account.setRole("用户");
            account.setaState("未开户");
            account.setMoney(0L);
            account.setActive("0");
            account.setCode(code);
            System.out.println("controller"+account);

            boolean b=accoutService.addAccount(account);
            if(b){ return Msg.success().Add("msg","邮件发送成功，请去邮箱激活");}else {
                System.out.println("邮箱错误或不存在");
                return Msg.fail().Add("msg","邮箱错误或不存在");
            }


        }
    }

    @RequestMapping("/activate")
    public String activate(@RequestParam(value = "code") String code) {

        Account account =accoutService.findByCode(code);
        account.setActive("1");

        System.out.println(code);
        accoutService.updateAccountActive(account);
        return "success";
    }





}
