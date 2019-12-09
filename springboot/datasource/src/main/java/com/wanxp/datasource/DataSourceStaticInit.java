package com.wanxp.datasource;

import com.wanxp.datasource.persistence.PersistenceHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;

import static com.wanxp.datasource.constant.DataSourceConstant.DATA_SOURCE_MASTER;
import static com.wanxp.datasource.constant.DataSourceConstant.DATA_SOURCE_SLAVE;

@Configuration
public class DataSourceStaticInit {

    @Resource(name = "masterEntityManagerFactory")
    private EntityManagerFactory masterEntityManagerFactory;

    @Resource(name = "slaveEntityManagerFactory")
    private EntityManagerFactory slaveEntityManagerFactory;

    @PostConstruct
    public void init() {
        PersistenceHelper.putEntityManagerFactory(DATA_SOURCE_MASTER, masterEntityManagerFactory);
        PersistenceHelper.putEntityManagerFactory(DATA_SOURCE_SLAVE, slaveEntityManagerFactory);
    }

}
