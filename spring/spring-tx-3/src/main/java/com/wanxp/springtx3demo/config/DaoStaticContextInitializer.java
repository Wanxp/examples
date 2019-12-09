package com.wanxp.springtx3demo.config;

import com.wanxp.springtx3demo.persistence.PersistenceHelper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;

import static com.wanxp.springtx3demo.persistence.PersistenceHelper.*;


@Component
public class DaoStaticContextInitializer {


    @Resource(name = MASTER_EMF)
    private EntityManagerFactory masterEntityManagerFactory;

    @Resource(name = SLAVE_EMF)
    private EntityManagerFactory slaveEntityManagerFactory;

    @PostConstruct
    public void init() {
        PersistenceHelper.putEntityManagerFactory(MASTER, masterEntityManagerFactory);
        PersistenceHelper.putEntityManagerFactory(SLAVE, slaveEntityManagerFactory);
    }
}
