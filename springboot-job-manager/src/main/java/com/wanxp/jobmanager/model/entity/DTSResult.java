package com.wanxp.jobmanager.model.entity;

import lombok.Data;

import javax.persistence.Entity;
import java.util.Date;

@Data
@Entity
public class DTSResult extends AbstractEntity{
    private Boolean success;
    private String errorMsg;
    private String duration;
    private Date createTime;
    private String jobId;
}
