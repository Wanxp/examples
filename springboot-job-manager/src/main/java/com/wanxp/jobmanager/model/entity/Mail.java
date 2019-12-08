package com.wanxp.jobmanager.model.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@Table
public class Mail extends AbstractEntity{
    private String sender;
    private String receiver;
    private String subject;
    private String content;
}
