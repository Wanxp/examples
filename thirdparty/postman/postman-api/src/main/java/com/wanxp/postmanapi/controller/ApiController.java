package com.wanxp.postmanapi.controller;

import com.wanxp.postmanapi.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
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
    public UserDTO get(Integer id) {
        Object o = redisTemplate.opsForValue().get(String.valueOf(id));
        return (UserDTO)o;
    }

    @GetMapping("users")
    @ResponseBody
    public List<UserDTO> getUsers() {
        List<UserDTO> userDTOS = new ArrayList<>(4);
        for (int i = 0;i<4;i++) {
            Object o = redisTemplate.opsForValue().get("user." + i);
            userDTOS.add((UserDTO)o);
        }
        return userDTOS;
    }

    @PostMapping("form-way")
    @ResponseBody
    public Boolean addByForm(@ModelAttribute("form") UserDTO user) {
        redisTemplate.opsForValue().set(user.getId().toString(), user, 1, TimeUnit.DAYS);
        return Boolean.TRUE;
    }

    @GetMapping("visualizer/boolean")
    @ResponseBody
    public Boolean getVisualizerData(@ModelAttribute("form") UserDTO user) {
        return new Random().nextBoolean();
    }
}
