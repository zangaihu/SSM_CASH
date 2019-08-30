package com.cash.service;

import com.cash.pojo.Account;

import javax.mail.MessagingException;
import java.util.List;

public interface AccountService {


     //查询所有账户
     List<Account> getAllAccount();
     //查询冻结账户
     List<Account> getDjAccount();
     //查询未开户账户
     List<Account> getWkhAccount();
     //根据账户名查询
     List<Account> getSelective(Account account);

     //更新状态
     int changeState(Account account) throws MessagingException;

     //删除用户
     int deleteAccount(Integer aId);






}
