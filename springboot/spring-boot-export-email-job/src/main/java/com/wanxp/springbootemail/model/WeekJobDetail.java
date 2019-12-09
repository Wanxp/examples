package com.wanxp.springbootemail.model;

import lombok.Data;

import java.util.Date;

@Data
public class WeekJobDetail {
    private String id;
    private String title;
    private Integer completeRate;
    private Date dateOfHeadLine;
    private Date dateOfComplete;
    private String result;
    private String risk;
    private String nextJob;
    private String remark;
}
