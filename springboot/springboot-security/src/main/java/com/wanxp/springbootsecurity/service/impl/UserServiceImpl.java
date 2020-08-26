package com.wanxp.springbootsecurity.service.impl;

import com.wanxp.common.util.BeanUtils;
import com.wanxp.springbootsecurity.dto.UserDto;
import com.wanxp.springbootsecurity.entity.Role;
import com.wanxp.springbootsecurity.entity.User;
import com.wanxp.springbootsecurity.exception.EmailExistsException;
import com.wanxp.springbootsecurity.repository.RoleRepository;
import com.wanxp.springbootsecurity.repository.UserRepository;
import com.wanxp.springbootsecurity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

/**
 * 用户逻辑服务 实现 类
 */
@Service
public class UserServiceImpl implements UserService, UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	/**
	 * 用户名查找用户，并加载权限
	 *
	 * @param s
	 * @return
	 * @throws UsernameNotFoundException
	 */
	@Override
	public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
		Optional<User> userOptional = userRepository.findById(s);
		if (!userOptional.isPresent()) {
			throw new UsernameNotFoundException(s);
		}
		User user = userOptional.get();
		List<Role> roleList = (List) roleRepository.findAllById(user.getRoleIdList());
		UserDto userDto = BeanUtils.copyProperties(user, UserDto.class);
		userDto.setAuthorises(roleList);
		return userDto;
	}

	/**
	 * 新增用户
	 *
	 * @param user
	 */
	@Override
	public void add(User user) {
		userRepository.save(user);
	}

	/**
	 * 删除用户
	 *
	 * @param email
	 */
	@Override
	public void deleteByEmail(String email) {
		userRepository.deleteById(email);
	}

	/**
	 * 更新用户
	 *
	 * @param user
	 */
	@Override
	public void update(User user) {
		if (!userRepository.existsById(user.getUsername())) {
			throw new UsernameNotFoundException(user.getUsername());
		}
		userRepository.save(user);
	}

	/***
	 * 用户 名称 获取用户
	 * @param email
	 * @return
	 */
	@Override
	public User getByEmail(String email) {
		return userRepository.findById(email).orElse(null);
	}

	@Override
	public User registerNewUserAccount(UserDto userDto) {
		if (checkUserExist(userDto)) {
			throw new EmailExistsException("there is am account with that email address:" + userDto.getEmail());
		}
		User user = BeanUtils.copyProperties(userDto, User.class);
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		user.setRoleIdList(Arrays.asList("user"));
		userRepository.save(user);
		return null;
	}

	/**
	 * 用户是否存在
	 *
	 * @param userDto
	 * @return
	 */
	@Override
	public boolean checkUserExist(UserDto userDto) {
		return userRepository.existsById(userDto.getEmail());
	}


}
