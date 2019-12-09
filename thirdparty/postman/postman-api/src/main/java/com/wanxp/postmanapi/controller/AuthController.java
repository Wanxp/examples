package com.wanxp.postmanapi.controller;

import com.wanxp.postmanapi.dto.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("auth")
public class AuthController {

    /**
     *
     * @return
     */
    @GetMapping("user")
    @ResponseBody
    public UserDTO getUser() {
        UserDTO userDTO = new UserDTO();
        userDTO.setId(10);
        userDTO.setName("管理员");
        return userDTO;
    }
}
