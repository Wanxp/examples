package com.wanxp.example.springboot.mybatis;

import lombok.Data;

import java.util.Date;

@Data
@Entity
public class BaseEntity {
    @Id
    private Integer id;
    private Date created;
    private Date updated;

    public void initCreateEntity() {
        this.created = new Date();
        this.updated = new Date();
    }

    public void initUpdateEntity() {
        this.updated = new Date();
    }
}
