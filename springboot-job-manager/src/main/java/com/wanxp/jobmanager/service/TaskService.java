package com.wanxp.jobmanager.service;

import com.wanxp.jobmanager.model.entity.QuartzJob;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;

import javax.transaction.Transactional;
import java.util.List;

public interface TaskService {
    QuartzJob getJob(String jobName, String jobGroup) throws SchedulerException;

    Scheduler getScheduler();

    QuartzJob createJob(String jobName, String jobGroup, Scheduler scheduler, Trigger trigger)
            throws SchedulerException;

    List<QuartzJob> getAllJobs() throws SchedulerException;

    List<QuartzJob> getRunningJob() throws SchedulerException;

    boolean addJob(QuartzJob job) throws SchedulerException;

    String getJobIdentity(QuartzJob job);

    JobDetail getJobDetail(QuartzJob job);

    @Transactional
    boolean pauseJob(QuartzJob job);

    @Transactional
    boolean resumeJob(QuartzJob job);

    @Transactional
    boolean deleteJob(QuartzJob job);

    void startJob(QuartzJob scheduleJob) throws SchedulerException;

    @Transactional
    void updateCronExpression(QuartzJob job) throws SchedulerException;

    @Transactional
    void updateStartTime(QuartzJob job) throws SchedulerException;
}
