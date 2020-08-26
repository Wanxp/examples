package com.wanxp.datasource.controller;

import com.wanxp.datasource.entity.User;
import com.wanxp.datasource.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

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

	@PostMapping("slave-find/master-create")
	@ResponseBody
	public User slaveFindAndMasterCreate() {
		return userService.slaveFindAndMasterCreate();
	}

	@PostMapping("master-find/master-create")
	@ResponseBody
	public Map<String, User> transactionalInMaster() {
		return userService.transactionalInMaster();
	}

}
