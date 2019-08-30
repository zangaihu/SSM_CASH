package com.cash.service;

import com.cash.pojo.Account;

/**
 * @data 2019/7/30  15:32
 */
public interface AccoutService {

    Account queryall();

    Account query4login(Account account);

    Account query4Regist(Account account);

    void updateAccount(Account account);

    Account querybyId(Integer id);

    void Inmoney(Integer id, long money);

    void Outmoney(Integer id, long money);

    void transfer(Integer id, Integer tId, long money);


    /*
    * 邮箱验证
    * */
    boolean addAccount(Account account) throws Exception;
    void updateAccountActive(Account account);
    Account findByCode(String code);
}
