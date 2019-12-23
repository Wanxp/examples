package com.wanxp.javabase.file;

public class FilePathDemo {
    public static void main(String[] args) {
        System.out.println(FilePathDemo.class.getResource("").getPath());
    }
}
