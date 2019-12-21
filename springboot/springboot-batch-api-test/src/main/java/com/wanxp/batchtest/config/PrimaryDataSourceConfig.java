package com.wanxp.batchtest.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.orm.jpa.JpaProperties;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
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
        entityManagerFactoryRef = PRIMARY_ENTITY_MANAGER_FACTORY_NAME,
        transactionManagerRef = PRIMARY_TRANSACTION_MANAGER_NAME,
        basePackages = {PRIMARY_JPA_PACKAGE_NAME}
)
public class PrimaryDataSourceConfig {
    @Autowired
    private JpaProperties jpaProperties;

    @Autowired
    @Qualifier(PRIMARY_DATASOURCE_NAME)
    private DataSource primaryDataSource;

//    @Primary
//    @Bean(name = PRIMARY_ENTITY_MANAGER_NAME)
//    public EntityManager entityManager(EntityManagerFactoryBuilder entityManagerFactoryBuilder) {
//        return primaryEntityManagerFactory(entityManagerFactoryBuilder).getObject().createEntityManager();
//    }

    @Primary
    @Bean(name = PRIMARY_ENTITY_MANAGER_FACTORY_NAME)
    public LocalContainerEntityManagerFactoryBean primaryEntityManagerFactory(EntityManagerFactoryBuilder entityManagerFactoryBuilder) {
        return entityManagerFactoryBuilder
                .dataSource(primaryDataSource)
                .properties(getVendorProperties())
                .packages(PRIMARY_JPA_ENTITY_PACKAGE_NAME)
                .persistenceUnit(PRIMARY_PERSISTENCE_UNIT_NAME)
                .build();
    }

    private Map getVendorProperties() {
        return jpaProperties.getProperties();
    }

    @Primary
    @Bean(name = PRIMARY_TRANSACTION_MANAGER_NAME)
    public PlatformTransactionManager transactionManagerPrimary(EntityManagerFactory entityManagerFactory) {
        return new JpaTransactionManager(entityManagerFactory);
    }


}
