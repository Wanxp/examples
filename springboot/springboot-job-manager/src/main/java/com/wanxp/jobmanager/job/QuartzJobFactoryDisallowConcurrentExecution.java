package com.wanxp.jobmanager.job;

import lombok.extern.slf4j.Slf4j;
import org.quartz.DisallowConcurrentExecution;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * Job有状态实现类，不允许并发执行
 * 若一个方法一次执行不完下次轮转时则等待该方法执行完后才执行下一次操作
 * 主要是通过注解：@DisallowConcurrentExecution (quartz 2.3.0 版本中 StatefulJob 已经被弃用，改用注解的方式)
 */
@DisallowConcurrentExecution
@Slf4j
public class QuartzJobFactoryDisallowConcurrentExecution implements Job {
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		// 内容与 QuartzJobFactory 里的 execute 方法里的一致
	}

}

