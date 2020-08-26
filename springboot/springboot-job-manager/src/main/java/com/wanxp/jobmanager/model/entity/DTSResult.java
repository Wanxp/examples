package com.wanxp.jobmanager.model.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

@Data
@Entity
@Table
public class DTSResult extends AbstractEntity {
	private Boolean success;
	private String errorMsg;
	private String duration;
	private Date createTime;
	private String jobId;
}
