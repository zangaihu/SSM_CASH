package com.cash.config;

import java.util.Arrays;
import java.util.List;

/**
 * Created By Sunhu At 2020/1/8 17:15
 *
 * @author Sun
 */
public class test {

    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(1,2,3,4,5,6,7,8,9);
        Integer count2 = list.stream()
                .reduce(0, (x, y) -> x + y);
        System.out.println(count2);
            //dsfsdfsfsfds


    }
}
