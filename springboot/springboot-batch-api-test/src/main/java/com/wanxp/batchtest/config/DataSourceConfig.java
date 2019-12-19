package com.wanxp.batchtest.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;

@Configuration
public class DataSourceConfig {

    @Bean(name = "primaryDataSource")
    @Qualifier("primaryDataSource")
    @Primary
    @ConfigurationProperties(prefix = "spring.datasource.primary")
    public DataSource primaryDataSource() {
        return DataSourceBuilder.create().build();
    }


    @Bean(name = "secondaryDataSource")
    @Qualifier("secondaryDataSource")
    @ConfigurationProperties(prefix = "spring.datasource.secondary")
    public DataSource secondaryDataSource() {
        return DataSourceBuilder.create().build();
    }

//
//    @Autowired
//    private DataSourceProperties primaryDataSourceProperties;
//
//    @Autowired
//    private DataSourceProperties secondaryDataSourceProperties;
//
//    @Bean(name = "primaryDataSourceProperties")
//    @Primary
//    @ConfigurationProperties(prefix="spring.datasource.primary")
//    public DataSourceProperties primaryDataSourceProperties() {
//        return new DataSourceProperties();
//    }
//
//    @Bean(name = "primaryDataSource")
//    @Qualifier("primaryDataSource")
//    @DependsOn("primaryDataSourceProperties")
//    @Primary
//    public DataSource primaryDataSource() {
//        return primaryDataSourceProperties
//                .initializeDataSourceBuilder()
//                .type(HikariDataSource.class)
//                .build();
//    }
//
//
//    @Bean(name = "secondaryDataSourceProperties")
//    @ConfigurationProperties(prefix="spring.datasource.secondary")
//    public DataSourceProperties secondaryDataSourceProperties() {
//        return new DataSourceProperties();
//    }
//
//
//
//    @Bean(name = "secondaryDataSource")
//    @Qualifier("secondaryDataSource")
//    public DataSource secondaryDataSource() {
//        return secondaryDataSourceProperties
//                .initializeDataSourceBuilder()
//                .type(HikariDataSource.class)
//                .build();
//    }

}
