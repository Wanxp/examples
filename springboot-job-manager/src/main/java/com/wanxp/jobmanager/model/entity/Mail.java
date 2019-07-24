package com.wanxp.jobmanager.model.entity;

import lombok.Data;

import javax.persistence.Entity;

@Data
@Entity
public class Mail extends AbstractEntity{
    private String sender;
    private String receiver;
    private String subject;
    private String content;
}
