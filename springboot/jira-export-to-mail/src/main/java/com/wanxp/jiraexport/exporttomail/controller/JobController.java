package com.wanxp.jiraexport.exporttomail.controller;


import com.wanxp.jiraexport.exporttomail.dto.PlatformResult;
import com.wanxp.jiraexport.exporttomail.dto.Result;
import com.wanxp.jiraexport.exporttomail.job.SendWorkStatusExcelJob;
import com.wanxp.jiraexport.exporttomail.service.JobService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
import java.util.Map;

import static com.wanxp.jiraexport.exporttomail.constant.JobConstant.*;

@RestController
@RequestMapping("/scheduler/")
@Slf4j
public class JobController {

    @Autowired
    @Lazy
    private JobService jobService;

    @RequestMapping("schedule")
    public Result schedule(@RequestParam("jobName") String jobName,
                           @RequestParam("jobScheduleTime") @DateTimeFormat(pattern = "yyyy/MM/dd HH:mm") Date jobScheduleTime,
                           @RequestParam("cronExpression") String cronExpression){
        log.debug("JobController.schedule()");

        //Job Name is mandatory
        if(jobName == null || jobName.trim().equals("")){
            return PlatformResult.fail(JOB_NAME_NOT_PRESENT);
        }

        //Check if job Name is unique;
        if(!jobService.isJobWithNamePresent(jobName)){

            if(cronExpression == null || cronExpression.trim().equals("")){
                //Single Trigger
                boolean status = jobService.scheduleOneTimeJob(jobName, SendWorkStatusExcelJob.class, jobScheduleTime);
                if(status){
                    return PlatformResult.success(jobService.getAllJobs());
                }else{
                    return PlatformResult.fail();
                }

            }
//            else{
//                //Cron Trigger
//                boolean status = jobService.scheduleCronJob(jobName, CronJob.class, jobScheduleTime, cronExpression);
//                if(status){
//                    return PlatformResult.success(jobService.getAllJobs());
//                }else{
//                    return PlatformResult.fail();
//                }
//            }
            return PlatformResult.success();
        }else{
            return PlatformResult.fail(JOB_WITH_SAME_NAME_EXIST);
        }
    }

    @RequestMapping("unschedule")
    public void unschedule(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.unschedule()");
        jobService.unScheduleJob(jobName);
    }

    @RequestMapping("delete")
    public Result delete(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.delete()");

        if(jobService.isJobWithNamePresent(jobName)){
            boolean isJobRunning = jobService.isJobRunning(jobName);

            if(!isJobRunning){
                boolean status = jobService.deleteJob(jobName);
                if(status){
                    return PlatformResult.success();
                }else{
                    return PlatformResult.fail();
                }
            }else{
                return PlatformResult.fail(JOB_ALREADY_IN_RUNNING_STATE);
            }
        }else{
            //Job doesn't exist
            return PlatformResult.fail(JOB_DOESNT_EXIST);
        }
    }

    @RequestMapping("pause")
    public Result pause(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.pause()");

        if(jobService.isJobWithNamePresent(jobName)){

            boolean isJobRunning = jobService.isJobRunning(jobName);

            if(!isJobRunning){
                boolean status = jobService.pauseJob(jobName);
                if(status){
                    return PlatformResult.success();
                }else{
                    return PlatformResult.fail();
                }
            }else{
                return PlatformResult.fail(JOB_ALREADY_IN_RUNNING_STATE);
            }

        }else{
            //Job doesn't exist
            return PlatformResult.fail(JOB_DOESNT_EXIST);
        }
    }

    @RequestMapping("resume")
    public Result resume(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.resume()");

        if(jobService.isJobWithNamePresent(jobName)){
            String jobState = jobService.getJobState(jobName);

            if(jobState.equals("PAUSED")){
                System.out.println("Job current state is PAUSED, Resuming job...");
                boolean status = jobService.resumeJob(jobName);

                if(status){
                    return PlatformResult.success();
                }else{
                    return PlatformResult.fail();
                }
            }else{
                return PlatformResult.fail(JOB_NOT_IN_PAUSED_STATE);
            }

        }else{
            //Job doesn't exist
            return PlatformResult.fail(JOB_DOESNT_EXIST);
        }
    }

    @RequestMapping("update")
    public Result updateJob(@RequestParam("jobName") String jobName,
                                    @RequestParam("jobScheduleTime") @DateTimeFormat(pattern = "yyyy/MM/dd HH:mm") Date jobScheduleTime,
                                    @RequestParam("cronExpression") String cronExpression){
        System.out.println("JobController.updateJob()");

        //Job Name is mandatory
        if(jobName == null || jobName.trim().equals("")){
            return PlatformResult.fail(JOB_NAME_NOT_PRESENT);

        }

        //Edit Job
        if(jobService.isJobWithNamePresent(jobName)){

            if(cronExpression == null || cronExpression.trim().equals("")){
                //Single Trigger
                boolean status = jobService.updateOneTimeJob(jobName, jobScheduleTime);
                if(status){
                    return PlatformResult.success(jobService.getAllJobs());
                }else{
                    return PlatformResult.fail();
                }

            }else{
                //Cron Trigger
                boolean status = jobService.updateCronJob(jobName, jobScheduleTime, cronExpression);
                if(status){
                    return PlatformResult.success(jobService.getAllJobs());
                }else{
                    return PlatformResult.fail();
                }
            }


        }else{
            //Job doesn't exist
            return PlatformResult.fail(JOB_DOESNT_EXIST);
        }
    }

    @RequestMapping("jobs")
    public Result getAllJobs(){
        System.out.println("JobController.getAllJobs()");
        return PlatformResult.success(jobService.getAllJobs());
    }

    @RequestMapping("checkJobName")
    public Result checkJobName(@RequestParam("jobName") String jobName){
        System.out.println("JobController.checkJobName()");

        //Job Name is mandatory
        if(jobName == null || jobName.trim().equals("")){
            return PlatformResult.fail(JOB_NAME_NOT_PRESENT);
        }

        boolean status = jobService.isJobWithNamePresent(jobName);
        return PlatformResult.success();
    }

    @RequestMapping("isJobRunning")
    public Result isJobRunning(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.isJobRunning()");

        boolean status = jobService.isJobRunning(jobName);
        return PlatformResult.success();
    }

    @RequestMapping("jobState")
    public Result getJobState(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.getJobState()");

        String jobState = jobService.getJobState(jobName);
        return PlatformResult.success(jobState);
    }

    @RequestMapping("stop")
    public Result stopJob(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.stopJob()");

        if(jobService.isJobWithNamePresent(jobName)){

            if(jobService.isJobRunning(jobName)){
                boolean status = jobService.stopJob(jobName);
                if(status){
                    return PlatformResult.success();
                }else{
                    //Server error
                    return PlatformResult.fail();
                }

            }else{
                //Job not in running state
                return PlatformResult.fail(JOB_NOT_IN_RUNNING_STATE);
            }

        }else{
            //Job doesn't exist
            return PlatformResult.fail(JOB_DOESNT_EXIST);
        }
    }

    @RequestMapping("start")
    public Result startJobNow(@RequestParam("jobName") String jobName) {
        System.out.println("JobController.startJobNow()");

        if(jobService.isJobWithNamePresent(jobName)){

            if(!jobService.isJobRunning(jobName)){
                boolean status = jobService.startJobNow(jobName);

                if(status){
                    //Success
                    return PlatformResult.success();

                }else{
                    //Server error
                    return PlatformResult.fail();
                }

            }else{
                //Job already running
                return PlatformResult.fail(JOB_ALREADY_IN_RUNNING_STATE);
            }

        }else{
            //Job doesn't exist
            return PlatformResult.fail(JOB_DOESNT_EXIST);
        }
    }

}
