package com.wanxp.jobmanager.runner;

import com.wanxp.jobmanager.constant.QuartzJobBeanConstant;
import com.wanxp.jobmanager.model.entity.QuartzJob;
import com.wanxp.jobmanager.service.QuartzJobService;
import com.wanxp.jobmanager.service.TaskService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Slf4j
public class JobRunner implements CommandLineRunner {
	@Autowired
	private TaskService taskService;

	@Autowired
	private QuartzJobService jobService;

	@Override
	public void run(String... args) throws Exception {
		// 可执行的任务列表
		List<QuartzJob> taskList = jobService.findByJobStatus(QuartzJobBeanConstant.STATUS_RUNNING);
		log.info("初始化加载定时任务......");
		for (QuartzJob job : taskList) {
			try {
				taskService.addJob(job);
			} catch (Exception e) {
				log.error("add job error: " + job.getJobName() + " " + job.getJobGroup(), e);
			}
		}
	}

}
