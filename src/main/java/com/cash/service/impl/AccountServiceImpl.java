package com.cash.service.impl;


import com.cash.mapper.AccountMapper;
import com.cash.pojo.Account;
import com.cash.service.AccountService;
import com.cash.utils.changeEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import java.util.List;

@Service
public class AccountServiceImpl  implements AccountService {

    @Autowired
    private AccountMapper accountMapper;
    //所有账户
    public List<Account> getAllAccount() {
        return accountMapper.getAllAccount();
    }
    //冻结账户
    public List<Account> getDjAccount() {
        return accountMapper.getDjAccount();
    }
    //未开户
    public List<Account> getWkhAccount() {
        return accountMapper.getWkhAccount();
    }

    //根据账户名查找
    public List<Account> getSelective(Account account) {
        return accountMapper.getSelective(account);
    }

    //状态改变
    public int changeState(Account account) throws MessagingException {
        System.out.println("before"+account);
        Account account1 = accountMapper.querybyId(account.getaId());
        System.out.println("total"+account1);
        changeEmail.sendMail(account1.getaEmail());
        int i = accountMapper.changeState(account);
        return i;
    }
    //删除
    public int deleteAccount(Integer aId) {
        return accountMapper.deleteAccount(aId);
    }





}
