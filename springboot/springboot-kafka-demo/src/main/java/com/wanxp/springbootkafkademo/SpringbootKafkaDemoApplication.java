package com.wanxp.springbootkafkademo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * https://zhuanlan.zhihu.com/p/112745985
 */
@SpringBootApplication
@EnableScheduling
public class SpringbootKafkaDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootKafkaDemoApplication.class, args);
	}

}
