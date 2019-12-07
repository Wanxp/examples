package com.wanxp.springbootemail.service.impl;

import com.atlassian.jira.rest.client.api.domain.Issue;
import com.wanxp.springbootemail.manager.JiraDataManager;
import com.wanxp.springbootemail.service.IssueService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Service
@Slf4j
public class IssueServiceImpl implements IssueService{

    @Autowired
    private JiraDataManager jiraDataManager;

    @Override
    public List<Issue> getLastWeekIssueByUsername(String username) {
        try {
            return jiraDataManager.queryDevLastWeekHandleIssue(username);
        } catch (ExecutionException e) {
            log.error("queryDevLastWeekHandleIssue failed", e);
        } catch (InterruptedException e) {
            log.error("queryDevLastWeekHandleIssue failed", e);
        }
        return new ArrayList<>();
    }

    @Override
    public List<Issue> getNextWeekIssueByUsername(String username) {
        try {
            return jiraDataManager.getDevNextWeekIssueByUsername(username);
        } catch (ExecutionException e) {
            log.error("queryDevLastWeekHandleIssue failed", e);
        } catch (InterruptedException e) {
            log.error("queryDevLastWeekHandleIssue failed", e);
        }
        return new ArrayList<>();
    }
}
