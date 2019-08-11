package com.wanxp.datasource.controller;

import com.wanxp.datasource.entity.User;
import com.wanxp.datasource.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("master")
    @ResponseBody
    public User addToMaster(@RequestBody User user) {
        return userService.addToMaster(user);
    }

    @PostMapping("slave")
    @ResponseBody
    public User addToSlave(@RequestBody User user) {
        return userService.addToSlave(user);
    }

    @GetMapping("master")
    @ResponseBody
    public User getFromMaster(Long id) {
        return userService.getFromMaster(id);
    }

    @GetMapping("slave")
    @ResponseBody
    public User getFromSlave(Long id) {
        return userService.getFromSlave(id);
    }

    @GetMapping("master/maxid")
    @ResponseBody
    public User getMaxIdUserFromMaster() {
        return userService.getMaxIdUserFromMaster();
    }

    @GetMapping("slave/maxid")
    @ResponseBody
    public User getMaxIdUserFromSlave() {
        return userService.getMaxIdUserFromSlave();
    }

}
