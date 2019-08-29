package com.wanxp.javabase.finaldemo;

import java.util.ArrayList;
import java.util.List;

/**
 * final修饰对象时，引用对象的地址不可变
 * finali修饰基本类型时，值不可变
 */
public class FinalDemo {
    /**
     * 增强for循环会将int等基本类型封装成类型对象
     */
    public static void finalInForLoop() {
        List<Integer> list = new ArrayList<>();
        list.add(Integer.valueOf(0));
        list.add(Integer.valueOf(1));
        list.add(Integer.valueOf(2));
        list.add(Integer.valueOf(3));
        for (final Integer i : list) {
            System.out.println(i.hashCode());
        }
        for (final int i : list) {
            System.out.println(i);
        }
        int[] intList = new int[]{0,1,2,3,4};
        for (final int i : intList) {
            System.out.println(i);
        }
    }

    public static void main(String[] args) {
        finalInForLoop();
    }
}
