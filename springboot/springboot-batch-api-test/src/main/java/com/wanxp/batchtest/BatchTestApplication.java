package com.wanxp.batchtest;

import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableBatchProcessing
//@EnableJpaRepositories
public class BatchTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(BatchTestApplication.class, args);
    }

}
