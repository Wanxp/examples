package com.wanxp.postmanapi.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class UserDTO implements Serializable {
    private static final long serialVersionUID = 4077955786213201513L;
    private Integer id;
    private String name;
}
