package com.wanxp.jobmanager.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class MailManager {

	@Autowired
	private JavaMailSender javaMailSender;

}
