package com.wanxp.springbootemail.config;

import com.atlassian.jira.rest.client.api.JiraRestClient;
import com.atlassian.jira.rest.client.api.JiraRestClientFactory;
import com.atlassian.jira.rest.client.internal.async.AsynchronousJiraRestClientFactory;
import com.wanxp.springbootemail.properties.JiraProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.ClientHttpRequestFactorySupplier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.http.client.SimpleClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import java.net.URI;

@Configuration
public class ThirdPartyRestApiConfig {

    @Autowired
    private JiraProperties jiraProperties;

    @Bean
    public RestTemplate restTemplate(ClientHttpRequestFactory factory) {
        return new RestTemplate(factory);
    }

    @Bean
    public ClientHttpRequestFactory simpleClientHttpRequestFactory() {
        SimpleClientHttpRequestFactory factory = new SimpleClientHttpRequestFactory();
        factory.setReadTimeout(5000);//ms
        factory.setConnectTimeout(15000);//ms
        return factory;
    }


    /**
     * 创建jira请求客户端工厂类
     * @return
     */
    @Bean
    public AsynchronousJiraRestClientFactory asynchronousJiraRestClientFactory() {
        return new AsynchronousJiraRestClientFactory();
    }

    /**
     * 创建jira请求客户端
     * @param jiraRestClientFactory
     * @return
     */
    @Bean
    public JiraRestClient jiraRestClient(JiraRestClientFactory jiraRestClientFactory) {
        return jiraRestClientFactory.createWithBasicHttpAuthentication(URI.create(
                jiraProperties.getUri()),
                jiraProperties.getUsername(),
                jiraProperties.getPassword());
    }
}
