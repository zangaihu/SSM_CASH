package com.cash.controller;


import com.cash.pojo.Account;
import com.cash.service.AccountService;
import com.cash.service.AccoutService;
import com.cash.utils.AESOperator;
import com.cash.utils.Msg;
import com.cash.utils.pubMsg;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @Autowired
    private AccoutService accoutService;

    @RequestMapping("/get")
    @ResponseBody
    public Msg getAll(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){
        PageHelper.startPage(pn,5);
        List<Account> accountList = accountService.getAllAccount();
        PageInfo page=new PageInfo(accountList,6);
        return Msg.Success().add("pageInfo",page);
    }



    /*
    *
    * 查询所有用户
    * 分页显示
    * */
    @RequestMapping("/get_all_account")
    public String getAllAccount(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){
        PageHelper.startPage(pn,5);
        List<Account> accountList = accountService.getAllAccount();
        PageInfo page=new PageInfo(accountList,6);
        model.addAttribute("pageInfo",page);
        return "account_list";
    }
    /*
     *
     * 查询冻结用户
     * 分页显示
     * */
    @RequestMapping("/get_dj_account")
    public String getDjAccount(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){
        PageHelper.startPage(pn,5);
        List<Account> accountList = accountService.getDjAccount();
        PageInfo page=new PageInfo(accountList,6);
        model.addAttribute("pageInfo",page);
        return "account_list";
    }
    /*
     *
     * 查询冻结用户
     * 分页显示
     * */
    @RequestMapping("/get_wkh_account")
    public String getWkhAccount(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){
        PageHelper.startPage(pn,5);
        List<Account> accountList = accountService.getWkhAccount();
        PageInfo page=new PageInfo(accountList,6);
        model.addAttribute("pageInfo",page);
        return "account_list";
    }
    /*
     *
     *
     * 分页显示
     * */
    @RequestMapping("/get_account_select")
    public String getAccountSelect(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Account account,Model model, HttpServletRequest request){
        PageHelper.startPage(pn,99);

        List<Account> accountList = accountService.getSelective(account);
        if (accountList.isEmpty())
        {
            request.setAttribute("msg","没有该用户");
        }
        PageInfo page=new PageInfo(accountList,6);

        model.addAttribute("pageInfo",page);
        return "account_list";
    }
    /*
     *
     *
     * 分页显示
     * */
    @RequestMapping("/get_accountdetail_select")
    public String getAccountDetailSelect(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Account account,Model model, HttpServletRequest request){
        PageHelper.startPage(pn,99);

        List<Account> accountList = accountService.getSelective(account);
        if (accountList.isEmpty())
        {
            request.setAttribute("msg","没有该用户");
        }
        PageInfo page=new PageInfo(accountList,6);

        model.addAttribute("pageInfo",page);
        return "account_detail";
    }
    /*
    * 改变用户状态
    * */
    @RequestMapping("/changeState")
    @ResponseBody
    public Msg changeState(Account account) throws MessagingException {
        System.out.println(account);
        int i=accountService.changeState(account);
        if (i!=0)
        {

            pubMsg.sendStateMessage(account.getaId());
            return Msg.Success();

        }
        else{
            return Msg.Fail();
        }

    }
    /*
    * 删除用户
    * */
    @RequestMapping("/delete_account")
    @ResponseBody
    public Msg deleteAccount(Integer aId)
    {
        System.out.println(aId);
        int i=accountService.deleteAccount(aId);
        if (i!=0)
        {
            return Msg.Success();
        }
        else{
            return Msg.Fail();
        }


    }

    /*
     *
     * 查询所有用户信息
     * 分页显示
     * */
    @RequestMapping("/get_detail")
    public String getAccountDetail(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){
        PageHelper.startPage(pn,5);
        List<Account> accountList = accountService.getAllAccount();
        PageInfo page=new PageInfo(accountList,6);
        model.addAttribute("pageInfo",page);
        return "account_detail";
    }




    @RequestMapping("/profile")
    public String profile(Integer id,Model model){
        //System.out.println(id);
        Account account =accoutService.querybyId(id);
        model.addAttribute("account",account);
        return "account-profile";
    }

    @RequestMapping("/toeditpswd")
    public String toedit(Integer id,Model model){
        Account account =accoutService.querybyId(id);
        System.out.println(account);
        AESOperator aesOperator = AESOperator.getInstance();
        String password=aesOperator.decrypt(account.getaPassword());
        account.setaPassword(password);
        System.out.println("解密后"+account);
        model.addAttribute("account",account);
        return "account-edit-pswd";
    }


    @ResponseBody
    @RequestMapping("/Update")
    public Msg update(Account account) {
        System.out.println(account.getaId());
        try {
            accoutService.updateAccount(account);
            return Msg.success();
        }catch (Exception e){
            e.printStackTrace();
            return Msg.fail();
        }

    }

    @ResponseBody
    @RequestMapping("/Updatepswd")
    public Msg updatepswd(Account account){

        System.out.println(account.getaId());
        System.out.println("改密码   "+account);
        AESOperator aesOperator = AESOperator.getInstance();
        System.out.println("加密   "+account);
        account.setaPassword(aesOperator.encrypt(account.getaPassword()));
        try {
            accoutService.updateAccount(account);
            return Msg.success();
        }catch (Exception e){
            e.printStackTrace();
            return Msg.fail();
        }

    }


    @RequestMapping("/apply")
    @ResponseBody
    public Msg apply(String  aName,String aState)
    {
        try{
            pubMsg.sendApplyMessage(aName,aState);
            return Msg.success().Add("msg","申请成功");
        }
        catch (Exception e){
            return Msg.fail().Add("msg","申请失败");

        }


    }

}
