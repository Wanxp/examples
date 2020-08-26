package com.wanxp.springbootsecurity.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.redis.core.RedisHash;

import java.util.List;

/**
 * 用户
 */
@RedisHash("user")
@Data
public class User {

	/**
	 * 邮箱
	 */
	@Id
	private String email;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 密码
	 */
	private String password;

	/**
	 * 是否有效
	 */
	private boolean enabled;

	/**
	 * 角色IdList
	 */
	private List<String> roleIdList;

}
