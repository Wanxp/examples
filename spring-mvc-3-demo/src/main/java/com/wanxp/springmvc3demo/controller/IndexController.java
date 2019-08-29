package com.wanxp.springmvc3demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("index")
public class IndexController {
    @RequestMapping("")
    public String index(Model model) {
        model.addAttribute("title", "this is index page");
        model.addAttribute("body", "Hello World!");
        return "helloworld";
    }
}
