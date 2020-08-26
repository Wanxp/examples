package com.wanxp.jobmanager.job;

import com.wanxp.jobmanager.model.dto.DTSResultDTO;
import com.wanxp.jobmanager.model.entity.QuartzJob;
import com.wanxp.jobmanager.service.DTSResultService;
import com.wanxp.jobmanager.service.QuartzJobService;
import com.wanxp.jobmanager.util.SpringUtils;
import com.wanxp.jobmanager.util.TaskUtils;
import lombok.extern.slf4j.Slf4j;
import org.quartz.Job;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.JobKey;
import org.quartz.Trigger;

/**
 * Job实现类  无状态
 * 若此方法上一次还未执行完，而下一次执行时间轮到时则该方法也可并发执行
 */
@Slf4j
public class QuartzJobFactory implements Job {


	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		JobDetail job = context.getJobDetail();
		JobKey key = job.getKey();
		String jobIdentity = "scheduleJob" + key.getGroup() + "_" + key.getName();
		Trigger trigger = context.getTrigger();
		QuartzJob scheduleJob = (QuartzJob) context.getMergedJobDataMap().get(jobIdentity);
		log.info("运行任务名称 = [" + scheduleJob + "]");

		try {
			DTSResultDTO result = TaskUtils.invokMethod(scheduleJob);

			scheduleJob.setNextTime(trigger.getNextFireTime());
			scheduleJob.setPreviousTime(trigger.getPreviousFireTime());

			QuartzJobService jobService = SpringUtils.getBean("quartzJobService");
			jobService.modifyByIdAndTime(scheduleJob.getPreviousTime(), scheduleJob.getNextTime(), scheduleJob.getUuid());

			// 写入运行结果
			DTSResultService dtsService = SpringUtils.getBean("dtsResultService");
			dtsService.save(result);
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
	}
}
