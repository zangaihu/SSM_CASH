package com.cash.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Account {
    private Integer aId;

    private String aName;

    private String aPassword;

    private String aNumber;

    private String aEmail;

    private String aState;

    private String aPhone;

    private String aIdentity;

    private String role;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createtime;

    private Long money;

    private String active;

    private String code;

    @Override
    public String toString() {
        return "Account{" +
                "aId=" + aId +
                ", aName='" + aName + '\'' +
                ", aPassword='" + aPassword + '\'' +
                ", aNumber='" + aNumber + '\'' +
                ", aEmail='" + aEmail + '\'' +
                ", aState='" + aState + '\'' +
                ", aPhone='" + aPhone + '\'' +
                ", aIdentity='" + aIdentity + '\'' +
                ", role='" + role + '\'' +
                ", createtime=" + createtime +
                ", money=" + money +
                ", active='" + active + '\'' +
                ", code='" + code + '\'' +
                '}';
    }

    public Account() {
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getaNumber() {
        return aNumber;
    }

    public void setaNumber(String aNumber) {
        this.aNumber = aNumber;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }


    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword;
    }



    public String getaEmail() {
        return aEmail;
    }

    public void setaEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    public String getaState() {
        return aState;
    }

    public void setaState(String aState) {
        this.aState = aState;
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    public String getaIdentity() {
        return aIdentity;
    }

    public void setaIdentity(String aIdentity) {
        this.aIdentity = aIdentity;
    }
}