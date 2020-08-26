package com.wanxp.jobmanager.service;

import com.wanxp.jobmanager.model.entity.QuartzJob;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public interface QuartzJobService {


	List<QuartzJob> findAll();

	@Transactional
	QuartzJob save(QuartzJob jobBean);

	QuartzJob getOne(String uuid);

	@Transactional
	int modifyByIdAndTime(Date previousTime, Date nextTime, String uuid);

	List<QuartzJob> findByJobStatus(String jobStatus);

	List<QuartzJob> findByJobStatusNot(String jobStatus);

	@Transactional
	int modifyByStatus(String jobStatus, String uuid);
}

