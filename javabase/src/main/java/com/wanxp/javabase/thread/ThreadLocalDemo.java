package com.wanxp.javabase.thread;

public class ThreadLocalDemo {
    private static final ThreadLocal<Integer> threadLocal = new ThreadLocal<>();
    private static final int THREAD_NUM = 10;
    public static void main(String[] args) throws InterruptedException {
        for (int i = 0;i < THREAD_NUM;i++) {
            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    threadLocal.set(0);
                }
            });
            System.out.println(thread.getName());
            thread.sleep(1000);

        }
    }
}
