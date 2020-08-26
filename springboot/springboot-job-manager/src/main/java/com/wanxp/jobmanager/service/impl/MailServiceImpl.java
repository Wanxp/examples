package com.wanxp.jobmanager.service.impl;

import com.wanxp.jobmanager.model.dto.MailDTO;
import com.wanxp.jobmanager.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service("mailService")
public class MailServiceImpl implements MailService {

	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public void send(MailDTO mailDTO) {
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setTo(mailDTO.getReceivers().toArray(new String[]{}));
		simpleMailMessage.setSubject(mailDTO.getSubject());
		simpleMailMessage.setText(mailDTO.getContent());
		simpleMailMessage.setFrom(mailDTO.getSender());
		javaMailSender.send(simpleMailMessage);
	}
}
