package com.wanxp.datasource.config;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import static com.wanxp.datasource.constant.DataSourceConstant.DATA_SOURCE_SLAVE;

/**
 * <a href=https://my.oschina.net/wuyiyi/blog/1604716>spring boot +spring data jpa +druid 多数据源配置</a>
 */
@Configuration
@DependsOn("entityManagerFactoryBuilder")
public class SlaveDataSourceConfig {

	@Autowired
	@Qualifier("slaveDataSource")
	private DataSource slaveDataSource;

	@Bean(name = "slaveDataSource")
	@ConfigurationProperties(prefix = "spring.datasource.druid.slave")
	public DataSource slaveDataSource() {
		return DruidDataSourceBuilder.create().build();
	}

	/**
	 * EntityManagerFactory类似于Hibernate的SessionFactory,mybatis的SqlSessionFactory
	 * 总之,在执行操作之前,我们总要获取一个EntityManager,这就类似于Hibernate的Session,
	 * mybatis的sqlSession.
	 *
	 * @param builder
	 * @return
	 */
	@Bean(name = "slaveEntityManagerFactory")
	public EntityManagerFactory slaveEntityManagerFactory(EntityManagerFactoryBuilder builder) {
		return this.slaveEntityManagerFactoryBean(builder).getNativeEntityManagerFactory();
	}


	@Bean(name = "slaveEntityManagerFactoryBean")
	public LocalContainerEntityManagerFactoryBean slaveEntityManagerFactoryBean(EntityManagerFactoryBuilder builder) {
		return builder.dataSource(slaveDataSource)
				.packages("com.wanxp.datasource.entity")
				.persistenceUnit(DATA_SOURCE_SLAVE)
				.build();
	}
}
