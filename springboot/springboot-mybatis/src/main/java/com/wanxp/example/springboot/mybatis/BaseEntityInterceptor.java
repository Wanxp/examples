package com.wanxp.example.springboot.mybatis;


import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.springframework.stereotype.Component;

import java.util.Properties;

/**
 * add time interceptor for update
 */
@Component
@Intercepts(@Signature(type = Executor.class, method = "update", args = {MappedStatement.class, Object.class}))
public class BaseEntityInterceptor implements Interceptor {
	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		MappedStatement mappedStatement = (MappedStatement) invocation.getArgs()[0];
		// get sql
		SqlCommandType sqlCommandType = mappedStatement.getSqlCommandType();
		// get parameter , this is the target object that you want to handle
		Object parameter = invocation.getArgs()[1];
		// make sure super class is BaseEntity
		if (parameter instanceof BaseEntity) {
			//init
			BaseEntity baseEntity = (BaseEntity) parameter;
			if (SqlCommandType.INSERT.equals(sqlCommandType)) {
				baseEntity.initCreateEntity();
			} else if (SqlCommandType.UPDATE.equals(sqlCommandType)) {
				baseEntity.initUpdateEntity();
			}
		}

		return invocation.proceed();
	}

	@Override
	public Object plugin(Object o) {
		return Plugin.wrap(o, this);
	}

	@Override
	public void setProperties(Properties properties) {

	}
}