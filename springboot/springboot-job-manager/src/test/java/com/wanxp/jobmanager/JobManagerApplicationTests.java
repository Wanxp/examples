package com.wanxp.jobmanager;

import com.wanxp.jobmanager.model.dto.MailDTO;
import com.wanxp.jobmanager.service.MailService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Arrays;

@RunWith(SpringRunner.class)
@SpringBootTest
public class JobManagerApplicationTests {

	@Autowired
	private MailService mailService;

	@Test
	public void contextLoads() {
	}

	private MailDTO mailDTO;

	@Before
	public void init() {
		mailDTO = new MailDTO();
		mailDTO.setSender("hughwan@walltechsystem.cn");
		mailDTO.setContent("Hello mail");
		mailDTO.setSubject("this is a test mail from springboot");
		mailDTO.setReceivers(Arrays.asList("977741432@qq.com"));
	}

	@Test
	public void testMaiService() {
		mailService.send(mailDTO);
	}

}
