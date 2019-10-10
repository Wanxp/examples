package com.wanxp.postmanapi.controller;

import com.wanxp.postmanapi.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.TimeUnit;

@RequestMapping("user")
@Controller
public class ApiController {

    @Autowired
    private RedisTemplate<Object, Object> redisTemplate;

    @PostMapping
    @ResponseBody
    public Boolean add(@RequestBody UserDTO user) {
        redisTemplate.opsForValue().set(user.getId().toString(), user, 1, TimeUnit.DAYS);
        return Boolean.TRUE;
    }

    @GetMapping
    @ResponseBody
    public UserDTO add(Integer id) {
        Object o = redisTemplate.opsForValue().get(id);
        return (UserDTO)o;
    }
}
