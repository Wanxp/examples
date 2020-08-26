package com.wanxp.jobmanager.service.impl;

import com.wanxp.jobmanager.model.entity.QuartzJob;
import com.wanxp.jobmanager.repository.QuartzJobRepository;
import com.wanxp.jobmanager.service.QuartzJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

@Service("quartzJobService")
public class QuartzJobServiceImpl implements QuartzJobService {

	@Autowired
	private QuartzJobRepository repository;

	@Override
	public List<QuartzJob> findAll() {
		return repository.findAll();
	}

	@Transactional
	@Override
	public QuartzJob save(QuartzJob jobBean) {
		return repository.save(jobBean);
	}

	@Override
	public QuartzJob getOne(String uuid) {
		return repository.getOne(uuid);
	}

	@Transactional
	@Override
	public int modifyByIdAndTime(Date previousTime, Date nextTime, String uuid) {
		return repository.modifyByIdAndTime(previousTime, nextTime, uuid);
	}

	@Override
	public List<QuartzJob> findByJobStatus(String jobStatus) {
		return repository.findByJobStatus(jobStatus);
	}

	@Override
	public List<QuartzJob> findByJobStatusNot(String jobStatus) {
		return repository.findByJobStatusNot(jobStatus);
	}

	@Transactional
	@Override
	public int modifyByStatus(String jobStatus, String uuid) {
		return repository.modifyByStatus(jobStatus, uuid);
	}

}
