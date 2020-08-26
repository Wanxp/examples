package com.wanxp.jobmanager.service;

import com.wanxp.jobmanager.model.dto.MailDTO;

public interface MailService {

	void send(MailDTO mailDTO);
}
