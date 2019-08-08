package com.wanxp.datasource.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.annotation.Primary;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import static com.wanxp.datasource.constant.DataSourceConstant.DATA_SOURCE_MASTER;

/**
 *  <a href=https://my.oschina.net/wuyiyi/blog/1604716>spring boot +spring data jpa +druid 多数据源配置</a>
 */
@Configuration
@DependsOn("entityManagerFactoryBuilder")
public class MasterDataSourceConfig {

    @Autowired
    @Qualifier("masterDataSource")
    private DataSource masterDataSource;

    @Bean(name = "masterDataSource")
    @Primary
    @ConfigurationProperties(prefix = "spring.datasource.master")
    public DataSource masterDataSource() {
        return DataSourceBuilder.create().build();
    }

    /**
     * EntityManagerFactory类似于Hibernate的SessionFactory,mybatis的SqlSessionFactory
     * 总之,在执行操作之前,我们总要获取一个EntityManager,这就类似于Hibernate的Session,
     * mybatis的sqlSession.
     * @param builder
     * @return
     */
    @Bean(name = "masterEntityManagerFactory")
    public EntityManagerFactory masterEntityManagerFactory(EntityManagerFactoryBuilder builder){
        return this.masterEntityManagerFactoryBean(builder).getObject();
    }

    @Bean(name = "masterEntityManagerFactoryBean")
    @Primary
    public LocalContainerEntityManagerFactoryBean masterEntityManagerFactoryBean(EntityManagerFactoryBuilder builder) {
        return builder.dataSource(masterDataSource)
                .packages("com.walltech.parcel.core.model")
                .persistenceUnit(DATA_SOURCE_MASTER)
                .build();
    }
}
