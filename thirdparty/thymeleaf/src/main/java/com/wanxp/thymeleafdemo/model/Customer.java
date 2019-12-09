package com.wanxp.thymeleafdemo.model;

import java.util.Calendar;

public class Customer {
    private Integer id;
    private String name;
    private Calendar cunstomerSince;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Calendar getCunstomerSince() {
        return cunstomerSince;
    }

    public void setCunstomerSince(Calendar cunstomerSince) {
        this.cunstomerSince = cunstomerSince;
    }
}
