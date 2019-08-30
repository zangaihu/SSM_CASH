package com.cash.utils;

import java.util.HashMap;
import java.util.Map;

public class Msg {
    private int code;

    private String msg;

    private Map<String,Object> extend=new HashMap<String, Object>();


    //用户要返回给浏览器的数据
    private Map<String,Object>  map = new HashMap<String, Object>();

    public  static  Msg success(){
        Msg result = new Msg();
        result.setCode(100);
        result.setMsg("处理成功");
        return  result;
    }
    public  static  Msg fail(){
        Msg result = new Msg();
        result.setCode(404);
        result.setMsg("处理失败");
        return  result;
    }

    public static Msg Success()
    {
        Msg result = new Msg();
        result.setCode(100);
        result.setMsg("处理成功");
        return result;
    }

    public static Msg Fail()
    {
        Msg result = new Msg();
        result.setCode(200);
        result.setMsg("处理失败");
        return result;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }


    public Msg add(String key, Object value) {
        this.getExtend().put(key, value);
        return this;

    }
    public Msg Add(String key, Object value){
        this.getMap().put(key,value);
        return  this;
    }


    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }
}
