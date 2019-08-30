package com.cash.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * @description: HttpServletRequestUtil
 * @date: 2019/8/13 9:55
 * @author: SunHu
 * @version: 1.0
 */

public class HttpServletRequestUtil {


    public static int getInt(HttpServletRequest  request,String key){
        try {


            return Integer.decode(request.getParameter(key)) ;

        } catch (Exception e) {
            return  -1 ;
        }
    }


    public static Long getLong(HttpServletRequest  request,String key){
        try {

            return Long.valueOf(  request.getParameter(key)) ;

        } catch (Exception e) {
            return  -1l ;
        }
    }


    public static Double getDouble(HttpServletRequest  request,String key){
        try {

            return Double.valueOf(  request.getParameter(key)) ;

        } catch (Exception e) {
            return  -1d ;
        }
    }


    public static Boolean getBoolean(HttpServletRequest  request,String key){
        try {

            return Boolean.valueOf(  request.getParameter(key)) ;

        } catch (Exception e) {
            return  false ;
        }
    }

    public static String getString (HttpServletRequest request, String key){

        try {
            String value = request.getParameter(key);
            if(value!=null){
                value= value.trim();
            }
            if("".equals(value)){
                value=null;
            }
            return value;
        } catch (Exception e) {
            return null;
        }

    }

}