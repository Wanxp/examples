package com.wanxp.jobmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("test")
@Controller
public class TestController extends BaseController {
	@RequestMapping
	@ResponseBody
	public String test() {
		return "test";
	}
}
