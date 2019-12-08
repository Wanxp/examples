package com.wanxp.springbootemail;

import com.atlassian.jira.rest.client.api.JiraRestClient;
import com.atlassian.jira.rest.client.api.domain.SearchResult;
import com.atlassian.jira.rest.client.api.domain.User;
import com.wanxp.springbootemail.job.SendWorkStatusExcelTask;
import com.wanxp.springbootemail.model.WeekJobDetail;
import com.wanxp.springbootemail.util.JxlsTemplate;
import io.atlassian.util.concurrent.Promise;
import lombok.extern.slf4j.Slf4j;
import org.joda.time.DateTime;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.internet.MimeMessage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@SpringBootTest
@Slf4j
class SpringBootEmailApplicationTests {


    @Autowired
    private JiraRestClient jiraRestClient;

    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private SendWorkStatusExcelTask sendWorkStatusExcelTask;


    @Test
    void contextLoads() {
    }

    @Test
    void getJiraUser() throws ExecutionException, InterruptedException {
        Promise<User> userPromise = jiraRestClient.getUserClient().getUser("hughwan");
        User u = userPromise.get();
        log.warn(u.toString());
    }

    @Test
    void getJiraIssureByJql() throws ExecutionException, InterruptedException {
        String jql = "project = ETOWER AND status changed after -1w by currentUser()";
        Promise<SearchResult> searchResultPromise = jiraRestClient.getSearchClient().searchJql(jql);
        SearchResult searchResult = searchResultPromise.get();
        log.warn(searchResult.toString());

    }

    @Test
    public void sendAttachmentsMail() throws Exception {

        MimeMessage mimeMessage = javaMailSender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
        helper.setFrom("hughwan@walltechsystem.cn");
        helper.setTo("977741432@qq.com");
        helper.setSubject("主题：有附件");
        helper.setText("有附件的邮件");

        FileSystemResource file = new FileSystemResource(new File("/home/hugh/桌面/Wall_Tech_JIRA_2019-12-06.csv"));
        helper.addAttachment("附件-1.csv", file);
        helper.addAttachment("附件-2.csv", file);

        javaMailSender.send(mimeMessage);

    }

    @Test
    public void sendWorkStatusExcelTaskTest() {
        sendWorkStatusExcelTask.sendWorkStatusExcelTask();
    }

    @Test
    public void createExcel() throws IOException {
        List<WeekJobDetail> currentJobDetailList = new ArrayList<>();
        for (int i = 0;i< 10 ;i++) {
            WeekJobDetail weekJobDetail = new WeekJobDetail();
            weekJobDetail.setId("ETOWER-111");
            weekJobDetail.setTitle("123213123");
            currentJobDetailList.add(weekJobDetail);
        }
        List<WeekJobDetail> nextJobDetailList = new ArrayList<>();
        for (int i = 0;i< 10 ;i++) {
            WeekJobDetail weekJobDetail = new WeekJobDetail();
            weekJobDetail.setId("ETOWER-111");
            weekJobDetail.setTitle("123213123");
            nextJobDetailList.add(weekJobDetail);
        }
        Map<String, Object> data = new HashMap<>();
        data.put("currentWeekJob", currentJobDetailList);
        data.put("nextWeekJob", nextJobDetailList);
        data.put("dateStart", DateTime.now().toString("yyyy-MM-dd"));
        data.put("dateEnd", DateTime.now().plus(-4).toString("yyyy-MM-dd"));
        JxlsTemplate.processTemplate("job_weekly_template.xlsx",
                new FileOutputStream(new File("/home/hugh/桌面/m.xlsx")), data);


    }

}
