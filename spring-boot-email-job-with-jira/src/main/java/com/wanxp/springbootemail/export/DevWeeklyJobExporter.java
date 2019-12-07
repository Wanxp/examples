package com.wanxp.springbootemail.export;

import com.atlassian.jira.rest.client.api.domain.Issue;
import com.wanxp.springbootemail.model.WeekJobDetail;
import com.wanxp.springbootemail.service.IssueService;
import com.wanxp.springbootemail.util.JxlsTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class DevWeeklyJobExporter {

    @Autowired
    private IssueService issueService;

    private static final String TEMPLATE_FILE_NAME = "job_weekly_template.xlsx";



    public void export(OutputStream outputStream, Map<String, String> paramters) throws IOException {
        List<WeekJobDetail> currentWeekJobDetails = getCurrentWeekJobDetails(paramters);
        List<WeekJobDetail> nextWeekJobDetails = getNextWeekJobDetails(paramters);
        Map<String, Object> data = new HashMap<>();
        data.put("currentWeekJobs", currentWeekJobDetails);
        data.put("nextWeekJobs", nextWeekJobDetails);
        JxlsTemplate.processTemplate(TEMPLATE_FILE_NAME, outputStream, data);
    }

    private List<WeekJobDetail> getNextWeekJobDetails(Map<String, String> paramters) {
        String username = paramters.get("username");
        List<Issue> issues = issueService.getNextWeekIssueByUsername(username);
        return convertIssueToWeekJobDetail(issues);
    }

    private List<WeekJobDetail> getCurrentWeekJobDetails(Map<String, String> paramters) {
        String username = paramters.get("username");
        List<Issue> issues = issueService.getLastWeekIssueByUsername(username);
        return convertIssueToWeekJobDetail(issues);
    }

    private List<WeekJobDetail> convertIssueToWeekJobDetail(List<Issue> issues) {
        if (!CollectionUtils.isEmpty(issues)) {
            return issues.stream().map(issue->{
               WeekJobDetail weekJobDetail = new WeekJobDetail();
               weekJobDetail.setId(issue.getKey());
               weekJobDetail.setTitle(issue.getSummary());
               weekJobDetail.setDateOfHeadLine(issue.getDueDate() != null ? issue.getDueDate().toDate() : null);
               weekJobDetail.setDateOfComplete(issue.getDueDate() != null ? issue.getDueDate().toDate() : null);
               return weekJobDetail;
            }).collect(Collectors.toList());
        }
        return new ArrayList<>();
    }
}
