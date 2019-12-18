package com.wanxp.jobmanager.controller;

import com.wanxp.jobmanager.constant.QuartzJobBeanConstant;
import com.wanxp.jobmanager.model.entity.QuartzJob;
import com.wanxp.jobmanager.service.QuartzJobService;
import com.wanxp.jobmanager.service.TaskService;
import lombok.extern.slf4j.Slf4j;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/job")
@Slf4j
public class QuartzJobController {

    @Autowired
    private QuartzJobService jobService;

    @Autowired
    private TaskService taskService;

    @GetMapping("/list")
    public String getJobList(Model model) {
        List<QuartzJob> jobList = jobService.findByJobStatusNot(QuartzJobBeanConstant.STATUS_DELETED);
        model.addAttribute("jobs", jobList);
        return "jobList";
    }

    @PutMapping("/{uuid}/status")
    @ResponseBody
    public List<QuartzJob> updateJobStatus(@PathVariable("uuid") String uuid, @RequestParam("jobStatus") String jobStatus, Model model) {
        jobService.modifyByStatus(jobStatus, uuid);
        QuartzJob jobBean = jobService.getOne(uuid);

        List<QuartzJob> jobs;
        try {
            jobs = taskService.getAllJobs();
            if (QuartzJobBeanConstant.STATUS_RUNNING.equals(jobBean.getJobStatus()) && !jobs.contains(jobBean)) {
                taskService.addJob(jobBean);
            } else if (QuartzJobBeanConstant.STATUS_RUNNING.equals(jobBean.getJobStatus()) && jobs.contains(jobBean)) {
                taskService.resumeJob(jobBean);
            }

            if (QuartzJobBeanConstant.STATUS_NOT_RUNNING.equals(jobBean.getJobStatus()) && jobs.contains(jobBean)) {
                taskService.pauseJob(jobBean);
            } else if (QuartzJobBeanConstant.STATUS_NOT_RUNNING.equals(jobBean.getJobStatus()) && !jobs.contains(jobBean)) {
                jobService.modifyByStatus(jobBean.getJobStatus(), jobBean.getUuid());
            }
        } catch (SchedulerException e) {
            log.error("", e);
        }

        List<QuartzJob> jobList = jobService.findByJobStatusNot(QuartzJobBeanConstant.STATUS_DELETED);
        return jobList;
    }

    @PutMapping("/{uuid}/date")
    @ResponseBody
    public Map<String, String> updateNextRunDate(@PathVariable("uuid") String uuid, @RequestParam("date") String date, Model model) {
        QuartzJob jobBean = jobService.getOne(uuid);
        if (jobBean != null && date != null) {
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date startTime;
            try {
                startTime = df.parse(date);
                jobBean.setStartTime(startTime);
                jobBean.setNextTime(startTime);
            } catch (ParseException e) {
                log.error("", e);
            }

            jobService.save(jobBean);
        }

        Map<String, String> result = new HashMap<String, String>();
        result.put("status", "success");
        return result;
    }

}
