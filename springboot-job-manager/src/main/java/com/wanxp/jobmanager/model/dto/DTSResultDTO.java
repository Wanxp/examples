package com.wanxp.jobmanager.model.dto;

import lombok.Data;

import java.util.Date;

@Data
public class DTSResultDTO {
    private Boolean success;
    private String errorMsg;
    private String duration;
    private Date createTime;
    private String jobId;
}
