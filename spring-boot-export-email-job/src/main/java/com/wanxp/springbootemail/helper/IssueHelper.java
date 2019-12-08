package com.wanxp.springbootemail.helper;

import com.atlassian.jira.rest.client.api.domain.Issue;
import org.springframework.util.StringUtils;

public class IssueHelper {

    public String getCompleteRate(Issue issue) {
        if (issue == null || issue.getStatus() == null || StringUtils.isEmpty(issue.getStatus().getName()))
            return "0%";
        return "";
    }
}
