package com.wanxp.batchtest.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.orm.jpa.JpaProperties;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import java.util.Map;

import static com.wanxp.batchtest.constant.Constant.*;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(
        entityManagerFactoryRef = SECONDARY_ENTITY_MANAGER_FACTORY_NAME,
        transactionManagerRef = SECONDARY_TRANSACTION_MANAGER_NAME,
        basePackages = {SECONDARY_JPA_PACKAGE_NAME}

)
public class SecondaryDataSourceConfig {
    @Autowired
    private JpaProperties jpaProperties;

    @Autowired
    @Qualifier(SECONDARY_DATASOURCE_NAME)
    private DataSource secondaryDataSource;

//    @Bean(name = SECONDARY_ENTITY_MANAGER_NAME)
//    public EntityManager entityManager(EntityManagerFactoryBuilder entityManagerFactoryBuilder) {
//        return secondaryEntityManagerFactory(entityManagerFactoryBuilder).getObject().createEntityManager();
//    }

    @Bean(name = SECONDARY_ENTITY_MANAGER_FACTORY_NAME)
    public LocalContainerEntityManagerFactoryBean secondaryEntityManagerFactory(EntityManagerFactoryBuilder entityManagerFactoryBuilder) {
        return entityManagerFactoryBuilder
                .dataSource(secondaryDataSource)
                .properties(getVendorProperties())
                .packages(SECONDARY_JPA_ENTITY_PACKAGE_NAME)
                .persistenceUnit(SECONDARY_PERSISTENCE_UNIT_NAME)
                .build();
    }

    private Map getVendorProperties() {
        return jpaProperties.getProperties();
    }

    @Bean(name = SECONDARY_TRANSACTION_MANAGER_NAME)
    public PlatformTransactionManager transactionManagerPrimary(EntityManagerFactory entityManagerFactory) {
        return new JpaTransactionManager(entityManagerFactory);
    }

}