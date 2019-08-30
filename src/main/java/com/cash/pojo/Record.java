package com.cash.pojo;

import java.util.Date;

public class Record {
    private Integer dId;

    private String dWay;

    private Integer dAccount;

    private Date dTime;

    private long dMoney;

    private String dComment;

    private String dText;

    public String getdText() {
        return dText;
    }

    public void setdText(String dText) {
        this.dText = dText;
    }

    public String getdComment() {
        return dComment;
    }

    public void setdComment(String dComment) {
        this.dComment = dComment;
    }

    public void setdAccount(Integer dAccount) {
        this.dAccount = dAccount;
    }

    public Integer getdAccount() {
        return dAccount;
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public String getdWay() {
        return dWay;
    }

    public void setdWay(String dWay) {
        this.dWay = dWay;
    }
    public Date getdTime() {
        return dTime;
    }

    public void setdTime(Date dTime) {
        this.dTime = dTime;
    }

    public long getdMoney() {
        return dMoney;
    }

    public void setdMoney(long dMoney) {
        this.dMoney = dMoney;
    }
}