package com.wanxp.springtx3demo.config.druid;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import static com.wanxp.springtx3demo.persistence.PersistenceHelper.*;


/**
 *  <a href=https://my.oschina.net/wuyiyi/blog/1604716>spring boot +spring data jpa +druid 多数据源配置</a>
 */
@Configuration
public class MasterDataSourceConfig {

    /**
     * EntityManagerFactory类似于Hibernate的SessionFactory,mybatis的SqlSessionFactory
     * 总之,在执行操作之前,我们总要获取一个EntityManager,这就类似于Hibernate的Session,
     * mybatis的sqlSession.
     * @return
     */
    @Bean(name = MASTER_EMF)
    public EntityManagerFactory masterEntityManagerFactory(){
        return Persistence.createEntityManagerFactory(MASTER);
    }



    /**
     * 配置事物管理器
     */
    @Bean(name = "masterDataBaseTransactionManager")
    public PlatformTransactionManager masterDataBaseTransactionManager(EntityManagerFactory masterEntityManagerFactory){
        return new JpaTransactionManager(masterEntityManagerFactory);
    }

}
