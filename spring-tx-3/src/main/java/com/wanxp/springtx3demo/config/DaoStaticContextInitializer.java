package com.wanxp.springtx3demo.config;

import com.wanxp.springtx3demo.persistence.PersistenceHelper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;

import static com.wanxp.springtx3demo.persistence.PersistenceHelper.MASTER;
import static com.wanxp.springtx3demo.persistence.PersistenceHelper.SLAVE;


@Component
public class DaoStaticContextInitializer {


    @Resource(name = "masterEntityManagerFactory")
    private EntityManagerFactory masterEntityManagerFactory;

    @Resource(name = "slaveEntityManagerFactory")
    private EntityManagerFactory slaveEntityManagerFactory;

    @Value("${spring.application.site.id}")
    private String siteId;

    @PostConstruct
    public void init() {
        PersistenceHelper.putEntityManagerFactory(MASTER, masterEntityManagerFactory);
        PersistenceHelper.putEntityManagerFactory(SLAVE, slaveEntityManagerFactory);
    }
}
