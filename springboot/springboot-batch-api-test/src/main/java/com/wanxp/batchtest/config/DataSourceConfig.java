package com.wanxp.batchtest.config;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;

import static com.wanxp.batchtest.constant.Constant.*;

@Configuration
public class DataSourceConfig {

    @Bean(name = PRIMARY_DATASOURCE_NAME)
    @Qualifier(PRIMARY_DATASOURCE_NAME)
    @Primary
    @ConfigurationProperties(prefix = PRIMARY_DATASOURCE_PROPERTIES_PREFIX)
    public DataSource primaryDataSource() {
        return DataSourceBuilder.create().build();
    }


    @Bean(name = SECONDARY_DATASOURCE_NAME)
    @Qualifier(SECONDARY_DATASOURCE_NAME)
    @ConfigurationProperties(prefix = SECONDARY_DATASOURCE_PROPERTIES_PREFIX)
    public DataSource secondaryDataSource() {
        return DataSourceBuilder.create().build();
    }

}
