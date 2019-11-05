package com.wanxp.springmvc3demo.controller;

import com.wanxp.springmvc3demo.dto.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@RequestMapping("user")
@EnableWebMvc
public class RestFulController {

    @RequestMapping(value = "/id")
    @ResponseBody
    public UserDTO getUserDTO() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("Jack");
        userDTO.setAge(11);
        return userDTO;
    }

    @RequestMapping(value = "/exception")
    @ResponseBody
    public UserDTO getException() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("Exception");
        userDTO.setAge(11);
        throw new RuntimeException("Exception");
    }


}
