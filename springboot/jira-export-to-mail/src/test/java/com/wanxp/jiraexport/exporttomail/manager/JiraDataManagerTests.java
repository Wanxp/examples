package com.wanxp.jiraexport.exporttomail.manager;

import com.wanxp.jiraexport.exporttomail.job.SendWorkStatusExcelJob;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.ExecutionException;

@RunWith(SpringRunner.class)
@SpringBootTest
public class JiraDataManagerTests {

    @Autowired
    private JiraDataManager jiraDataManager;

    @Autowired
    private SendWorkStatusExcelJob sendWorkStatusExcelJob;

    @Test
    public void testGetData() throws ExecutionException, InterruptedException {
//        jiraDataManager.getIssuesByJql("status changed after -1w by currentUser()");
        sendWorkStatusExcelJob.sendWorkStatusExcelTask();
    }


}
