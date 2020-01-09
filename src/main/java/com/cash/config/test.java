package com.cash.config;

import org.junit.Test;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/**
 * Created By Sunhu At 2020/1/8 17:15
 *
 * @author Sun
 */
public class test {

    public static void main(String[] args) {
        List<Integer> list = Arrays.asList(1,2,3,4,5,5,6,6,7,8,9);
        Integer count2 = list.stream()
                .reduce(0, (x, y) -> x + y);

        //去重，必要时重写hashCode和equals
        list.stream().distinct().forEach(System.out::print);
        System.out.println();
        //格式化打印
        list.stream().forEach(s->System.out.print(s+","));
        System.out.println();
        //range 左闭右开 max 取最大
        IntStream.range(2,6).max().ifPresent(System.out::println);
        IntStream.range(2,6).average().ifPresent(System.out::println);

        //mapToInt
        Stream.of("s1","s2","s3").map(s->s.substring(1))
                .mapToInt(Integer::parseInt)
                .forEach(System.out::println);
        //mapToObj
        IntStream.range(1,4).mapToObj(i->"s"+i)
                .forEach(System.out::println);
    }

    @Test
    public void testFilter(){
        List<String> strings = Arrays.asList("abc", "", "bc", "efg", "abcd","", "jkl");

        String a = strings.stream().filter(s -> !s.startsWith("a")||!s.isEmpty()).collect(Collectors.joining(","));
        System.out.println(a);

        List<String> myList=Arrays.asList("5","1","2","4","7");
        myList.stream().sorted(Comparator.comparingInt(Integer::parseInt)).forEach(System.out::println);
    }
}
