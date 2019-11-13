package com.wanxp.springtx3demo;


import com.wanxp.springtx3demo.persistence.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan
public class Main {

    private static Logger log = LoggerFactory.getLogger(Main.class);

    public static void main(String[] args) {
        log.debug("application start.");
        ApplicationContext context = new AnnotationConfigApplicationContext(Main.class);
        testPersistenceHelper(context);
        log.debug("application stop.");
    }

    private static void testPersistenceHelper(ApplicationContext context) {
        UserService userService = context.getBean(UserService.class);
        User user = new User();
        user.setId(220l);
        user.setName("张三");
        user.setAge(18);

        try {
            userService.delete(user.getId());

        }catch (Exception e) {
        }
        try {
            userService.insert(user);
        }catch (Exception e) {
            log.error("delete error",e);
        }
        log.debug("Transaction : " + (userService.get(user.getId()) == null));
    }
}
