package com.wanxp.datasource.service;

import com.wanxp.datasource.entity.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

public interface UserService {
	User addToMaster(User user);

	User addToSlave(User user);

	User getFromMaster(Long id);

	User getFromSlave(Long id);

	User getMaxIdUserFromMaster();

	User getMaxIdUserFromSlave();

	User slaveFindAndMasterCreate();


	@Transactional
	Map<String, User> transactionalInMaster();

	@Transactional
	Map<String, User> transactionalInMasterFaield();
}
