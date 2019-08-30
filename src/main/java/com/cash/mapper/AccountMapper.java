package com.cash.mapper;

import com.cash.pojo.Account;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;


@MapperScan
public interface AccountMapper {
    int deleteByPrimaryKey(Integer aId);

    int insert(Account record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(Integer aId);


    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);


    @Select("select * from account where role='用户'order by a_id desc ")
    List<Account> getAllAccount();

    @Select("select * from account where a_state='冻结' and role= '用户' order by a_id desc ")
    List<Account> getDjAccount();


    @Select("select * from account where a_state='未开户' and role= '用户'order by a_id desc ")
    List<Account> getWkhAccount();


    List<Account> getSelective(Account account);

    int changeState(Account account);


    @Delete("delete from account where a_id=#{aId} ")
    int deleteAccount(Integer aId);


    @Select("select * from  account")
    Account queryall();

    Account query4login(Account account);

    Account query4Regist(Account account);



    void addAccount(Account account);

    @Select("select  * from account where code=#{code} ")
    Account findByCode(String code);


    void updateAccount(Account account);

    @Update("update account set active=#{active} where a_id=#{aId} ")
    void updateAccountActive(Account account);

    @Select("select * from  account where a_id=#{aId}")
    Account querybyId(Integer id);

    void Inmoney(@Param("id") Integer id, @Param("money") long money);

    void Outmoney(@Param("id")Integer id, @Param("money")long money);
}