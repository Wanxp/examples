package com.wanxp.batch.excel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories
public class SpringBootBatchExcelApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootBatchExcelApplication.class, args);
	}

}
