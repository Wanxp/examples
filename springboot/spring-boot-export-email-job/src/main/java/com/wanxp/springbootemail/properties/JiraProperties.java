package com.wanxp.springbootemail.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "jira")
@Data
public class JiraProperties {
    private String uri;
    private String username;
    private String password;
}