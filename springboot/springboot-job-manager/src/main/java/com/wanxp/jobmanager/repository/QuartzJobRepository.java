package com.wanxp.jobmanager.repository;

import com.wanxp.jobmanager.model.entity.QuartzJob;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface QuartzJobRepository extends JpaRepository<QuartzJob, String> {
	List<QuartzJob> findByJobStatus(String jobStatus);

	List<QuartzJob> findByJobStatusNot(String jobStatus);

	/**
	 * 修改上一次执行时间和下一次执行时间
	 */
	@Modifying
	@Query("update QuartzJob j set j.previousTime = ?1, j.nextTime = ?2 where j.uuid = ?3")
	int modifyByIdAndTime(Date previousTime, Date nextTime, String uuid);

	/**
	 * 修改job状态
	 */
	@Modifying
	@Query("update QuartzJob j set j.jobStatus = ?1 where j.uuid = ?2")
	int modifyByStatus(String jobStatus, String uuid);

}
