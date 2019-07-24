package com.wanxp.jobmanager.model.dto;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class MailDTO {
    private String sender;
    private List<String> receivers;
    private String subject;
    private String content;
    private Map<String, Object> attachment;
}
