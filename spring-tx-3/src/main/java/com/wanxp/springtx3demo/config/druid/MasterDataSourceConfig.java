package com.wanxp.springtx3demo.config.druid;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.annotation.Primary;

import javax.persistence.EntityManagerFactory;


/**
 *  <a href=https://my.oschina.net/wuyiyi/blog/1604716>spring boot +spring data jpa +druid 多数据源配置</a>
 */
@Configuration
@DependsOn("entityManagerFactoryBuilder")
public class MasterDataSourceConfig {

    /**
     * EntityManagerFactory类似于Hibernate的SessionFactory,mybatis的SqlSessionFactory
     * 总之,在执行操作之前,我们总要获取一个EntityManager,这就类似于Hibernate的Session,
     * mybatis的sqlSession.
//     * @param builder
     * @return
     */
    @Bean(name = "masterEntityManagerFactory")
    public EntityManagerFactory masterEntityManagerFactory(){
    }

    @Bean(name = "masterEntityManagerFactoryBean")
    @Primary
    public LocalContainerEntityManagerFactoryBean masterEntityManagerFactoryBean(EntityManagerFactoryBuilder builder) {
        return builder.dataSource(masterDataSource)
                .properties(getVendorProperties(masterDataSource))
                .packages("com.walltech.parcel.core.model")
                .persistenceUnit(MASTER)
                .build();
    }

    /**
     * 配置事物管理器
     */
    @Bean(name = "masterDataBaseTransactionManager")
    public DataSourceTransactionManager masterDataBaseTransactionManager(){
        return new DataSourceTransactionManager(masterDataSource);
    }

}
