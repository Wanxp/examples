package com.wanxp.datasource.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.persistence.EntityManagerFactory;

@EnableTransactionManagement
public class TransactionManagerConfig {

    @Autowired
    private EntityManagerFactory masterEntityManagerFactory;


    /**
     * 配置事务管理器
     */
    @Bean("masterTransactionManager")
    public PlatformTransactionManager masterTransactionManager( ) {
        JpaTransactionManager jpaTransactionManager =
                new JpaTransactionManager(masterEntityManagerFactory);
        return jpaTransactionManager;
    }
}
