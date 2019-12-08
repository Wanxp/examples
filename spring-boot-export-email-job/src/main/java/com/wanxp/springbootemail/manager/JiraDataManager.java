package com.wanxp.springbootemail.manager;

import com.atlassian.jira.rest.client.api.JiraRestClient;
import com.atlassian.jira.rest.client.api.domain.Issue;
import com.atlassian.jira.rest.client.api.domain.Permission;
import com.atlassian.jira.rest.client.api.domain.SearchResult;
import io.atlassian.util.concurrent.Promise;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Component
@Slf4j
public class JiraDataManager {

    private static final String DEV_LAST_WEEK_HANDLE_ISSUE = "status changed after -1w by currentUser()";
    private static final String DEV_NEXT_WEEK_HANDLE_ISSUE = "assignee = currentUser() AND resolution = Unresolved order by updated DESC";
    @Autowired
    private JiraRestClient jiraRestClient;

    public List<Issue> queryDevLastWeekHandleIssue(String name) throws ExecutionException, InterruptedException {
        Promise<SearchResult> issuePromise = jiraRestClient.getSearchClient().searchJql(DEV_LAST_WEEK_HANDLE_ISSUE);
        SearchResult searchResult = issuePromise.get();
        if (searchResult == null) {
            return new ArrayList<>();
        }
        return (List)searchResult.getIssues();
    }

    public List<Issue> getDevNextWeekIssueByUsername(String username) throws ExecutionException, InterruptedException {
        Promise<SearchResult> issuePromise = jiraRestClient.getSearchClient().searchJql(DEV_NEXT_WEEK_HANDLE_ISSUE);
        SearchResult searchResult = issuePromise.get();
        if (searchResult == null) {
            return new ArrayList<>();
        }
        return (List)searchResult.getIssues();
    }
}
