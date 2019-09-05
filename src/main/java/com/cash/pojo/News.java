package com.cash.pojo;

import java.util.Date;

public class News {
    private Integer nId;

    private String nTitle;

    private Date nDate;

    private Integer nAuthor;

    private String nSummary;

    private String nText;

    private String nImg;

    @Override
    public String toString() {
        return "{\"News\":{"
                + "\"nId\":"
                + nId
                + ",\"nTitle\":\""
                + nTitle + '\"'
                + ",\"nSummary\":\""
                + nSummary + '\"'
                + "}}";

    }


    public String getnImg() {
        return nImg;
    }

    public void setnImg(String nImg) {
        this.nImg = nImg;
    }

    public Date getnDate() {
        return nDate;
    }

    public void setnDate(Date nDate) {
        this.nDate = nDate;
    }

    public Integer getnId() {
        return nId;
    }

    public void setnId(Integer nId) {
        this.nId = nId;
    }

    public String getnTitle() {
        return nTitle;
    }

    public void setnTitle(String nTitle) {
        this.nTitle = nTitle;
    }


    public Integer getnAuthor() {
        return nAuthor;
    }

    public void setnAuthor(Integer nAuthor) {
        this.nAuthor = nAuthor;
    }

    public String getnSummary() {
        return nSummary;
    }

    public void setnSummary(String nSummary) {
        this.nSummary = nSummary;
    }

    public String getnText() {
        return nText;
    }

    public void setnText(String nText) {
        this.nText = nText;
    }


}