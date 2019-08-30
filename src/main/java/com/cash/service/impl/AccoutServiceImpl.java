package com.cash.service.impl;

import com.cash.mapper.AccountMapper;
import com.cash.pojo.Account;
import com.cash.service.AccoutService;
import com.cash.utils.MailUtil;
import com.cash.utils.UpdateEmail;
import com.cash.utils.checkMail;
import org.apache.ibatis.jdbc.RuntimeSqlException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.mail.MessagingException;

/**
 * @data 2019/7/30  15:32
 */
@Service
@Transactional
public class AccoutServiceImpl implements AccoutService {
    @Autowired
    private AccountMapper accountMapper;

    public Account queryall(){
        return  accountMapper.queryall();
    }

   public Account query4login(Account account){
        return  accountMapper.query4login(account);
   }
   public  Account query4Regist(Account account){
        return  accountMapper.query4Regist(account);
   }




   public boolean addAccount(Account account) throws MessagingException {


           System.out.println("service:"+account);
           if(checkMail.valid(account.getaEmail(),"jootmir.org")){
               accountMapper.addAccount(account);
               MailUtil.sendMail(account.getaEmail(), account.getCode());
               System.out.println("发送激活邮件");
               return true;
           }

            else {
               System.out.println("邮箱不存在");
               return false;
           }



   }

    public void updateAccountActive(Account account) {
             accountMapper.updateAccountActive(account);
    }

    public Account findByCode(String code) {
        return accountMapper.findByCode(code);
    }


    public void updateAccount(Account account){
        Account account1 = accountMapper.querybyId(account.getaId());
        System.out.println("发送邮件账户"+account1);
        accountMapper.updateAccount(account);

        try {
            UpdateEmail.sendMail(account1.getaEmail());
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        //try {
        //    UpdateEmail.sendMail(account.getaEmail());
        //} catch (MessagingException e) {
        //    e.printStackTrace();
        //}
    }

   public Account querybyId(Integer id){
        return accountMapper.querybyId(id);
   }

   @Transactional(rollbackFor = Exception.class)
   public void Inmoney(Integer id ,long money){accountMapper.Inmoney(id,money);}

    @Transactional(rollbackFor = Exception.class)
   public void Outmoney(Integer id, long money){
        //Account account = accountMapper.querybyId(id);

        try{
            accountMapper.Outmoney(id, money);
        }catch (Exception ex)
        {
            throw  new RuntimeSqlException("余额不足");
        }



    }

    @Transactional(rollbackFor = Exception.class)
    public void transfer(Integer id, Integer tId, long money) {
        Account account = accountMapper.querybyId(id);
        System.out.println(account.getMoney());

        try {
            if (account.getMoney()<=0||account.getMoney()<money)
            {
                throw new Exception("余额不足");
            }
            else{
                accountMapper.Outmoney(id,money);
                accountMapper.Inmoney(tId,money);
            }

        }catch (Exception e){

            e.printStackTrace();
        }

    }


}
