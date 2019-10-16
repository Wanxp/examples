package com.wanxp.postmanapi.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO implements Serializable {
    private static final long serialVersionUID = 4077955786213201513L;
    private Integer id;
    private String name;
    private Byte age;
    private Integer addressId;
}
