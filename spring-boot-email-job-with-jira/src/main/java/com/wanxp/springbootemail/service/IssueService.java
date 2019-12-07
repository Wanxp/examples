package com.wanxp.springbootemail.service;

import com.atlassian.jira.rest.client.api.domain.Issue;

import java.util.List;

public interface IssueService {
    List<Issue> getLastWeekIssueByUsername(String username);

    List<Issue> getNextWeekIssueByUsername(String username);
}
