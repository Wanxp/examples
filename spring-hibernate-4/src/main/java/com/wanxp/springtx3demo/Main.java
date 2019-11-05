package com.wanxp.springtx3demo;


import com.wanxp.springtx3demo.persistence.UserDao;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan
public class Main {
    public static void main(String[] args) {
        System.out.println("application start.");
        ApplicationContext context = new AnnotationConfigApplicationContext(Main.class);
        testPersistenceHelper(context);
        System.out.println("application stop.");
    }

    private static void testPersistenceHelper(ApplicationContext context) {
        UserDao userDao = context.getBean(UserDao.class);
        User user = new User();
        user.setId(220l);
        user.setName("张三");
        user.setAge(18);
        System.out.println(userDao.insert(user));

    }
}
