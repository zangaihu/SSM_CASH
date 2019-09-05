package com.cash.controller;

import com.cash.pojo.Account;
import com.cash.pojo.Record;
import com.cash.service.AccoutService;
import com.cash.service.RecordService;
import com.cash.utils.AESOperator;
import com.cash.utils.Msg;
import com.cash.utils.pubMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;



/**
 * @data 2019/8/1  19:04
 */
@Controller
public class MoneyController {
    @Autowired
    private AccoutService accoutService;
    @Autowired
    private RecordService recordService;

    @RequestMapping("/toInmoney")
    public String toInmoney(Integer id, Model model){
        Account account =accoutService.querybyId(id);
        account.setaPassword(AESOperator.getInstance().decrypt(account.getaPassword()));
        model.addAttribute("account",account);
        return  "account-inmoney";
    }

    @RequestMapping("/toOutmoney")
    public String Outmoney(Integer id, Model model){
        Account account =accoutService.querybyId(id);
        account.setaPassword(AESOperator.getInstance().decrypt(account.getaPassword()));
        model.addAttribute("account",account);
        return  "account-outmoney";
    }

    @RequestMapping("/totransfer")
    public String totransfer(Integer id, Model model){
        Account account =accoutService.querybyId(id);
        account.setaPassword(AESOperator.getInstance().decrypt(account.getaPassword()));
        model.addAttribute("account",account);
        return "account-transfer";
    }


    /*
    * 存款
    * */
    @ResponseBody
    @RequestMapping("/Inmoney")
    public Msg Inmoney(Integer id, long money){
        //System.out.println(id);
        //System.out.println(money);
        //将数据封装到record里面一起传入
        Record record = new Record();
        try {
            record.setdAccount(id);
            record.setdMoney(money);

            record.setdTime(new Date());
            record.setdWay("存款");
            record.setdComment("交易成功");
            record.setdText("无");



            accoutService.Inmoney(id,money);
            recordService.insertRecord(record);


            return Msg.success();
        }catch (Exception e){
            e.printStackTrace();
            return Msg.fail();
        }
    }


    /*
    *
    * 取款
    * */
    @ResponseBody
    @RequestMapping("/Outmoney")
    public Msg Outmoney(Integer id,long money){
        Record record = new Record();
        try {
            record.setdAccount(id);
            record.setdMoney(money);
            record.setdTime(new Date());
            record.setdWay("取款");
            record.setdComment("交易成功");
            record.setdText("无");

            accoutService.Outmoney(id,money);
            recordService.insertRecord(record);

            return Msg.success();
        }catch (Exception e){
            e.printStackTrace();
            return Msg.fail();
        }
    }



    /*
    *
    * 转账
    * */
    @ResponseBody
    @RequestMapping("/Transfermoney")
    public Msg transfermoney(@RequestParam ("id") Integer id,
                             @RequestParam("tId") Integer tId,
                             @RequestParam("money") long money
    ){
        Record record = new Record();
        Record trecord= new Record();
        Account inaccount = accoutService.querybyId(tId);
        Account outaccount = accoutService.querybyId(id);
        record.setdAccount(id);
        record.setdMoney(money);

        //record.setdTime(new Date());
        record.setdWay("转账");
        trecord.setdAccount(tId);
        trecord.setdMoney(money);
        //trecord.setdTime(new Date());
        trecord.setdWay("收到账款");
        if(inaccount != null ){
            try {
                if (outaccount.getMoney()<=0||outaccount.getMoney()<money)
                {   record.setdComment("交易失败");
                    record.setdText("余额不足");
                    recordService.insertRecord(record);

                    throw new Exception("转账失败");
                }
                else {
                    accoutService.transfer(id, tId, money);

                    record.setdText("无");
                    record.setdComment("交易成功");
                    recordService.insertRecord(record);
                    trecord.setdText("无");
                    trecord.setdComment("交易成功");

                    pubMsg.transferTip(inaccount,outaccount,money);
                    recordService.insertRecord(trecord);


                    return Msg.success().Add("msg", "转账成功");
                }

            }catch (Exception e){
                e.printStackTrace();
                return Msg.fail().Add("msg","转账失败,确认交易金额");
            }
        }
        else {
            record.setdComment("交易失败");
            record.setdText("收款人不存在");
            recordService.insertRecord(record);

            return Msg.fail().Add("msg","转账失败，确认收款人是否存在");
        }
    }


}
