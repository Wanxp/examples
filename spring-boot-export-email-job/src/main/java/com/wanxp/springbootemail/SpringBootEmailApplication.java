package com.wanxp.springbootemail;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class SpringBootEmailApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootEmailApplication.class, args);
    }

}
