package com.wanxp.jobmanager.job;

import com.wanxp.jobmanager.model.entity.QuartzJob;
import com.wanxp.jobmanager.service.TaskService;
import com.wanxp.jobmanager.util.SpringUtils;
import lombok.extern.slf4j.Slf4j;
import org.quartz.SchedulerException;

import java.util.List;

@Slf4j
public class ViewTestJob {

    private TaskService taskService;

    public ViewTestJob() {
        taskService = SpringUtils.getBean("taskService");
    }

    public void run() {
        List<QuartzJob> jobs;
        try {
            System.out.print("All jobs: ");
            jobs = taskService.getAllJobs();
            for (QuartzJob job : jobs) {
                System.out.print(job.getJobGroup() + "_" + job.getJobName() + " " + job.getJobStatus() + "\t");
            }
            System.out.println();
        } catch (SchedulerException e) {
            log.error("", e);
        }
    }

}
