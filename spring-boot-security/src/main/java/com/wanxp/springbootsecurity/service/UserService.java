package com.wanxp.springbootsecurity.service;

import com.wanxp.springbootsecurity.dto.UserDto;
import com.wanxp.springbootsecurity.entity.User;
import com.wanxp.springbootsecurity.exception.EmailExistsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * 用户逻辑服务接口
 */
public interface UserService {
    /**
     * 新增用户
     * @param user
     */
    void add(User user);
    /**
     * 删除用户
     * @param email
     */
    void deleteByEmail(String email);
    /**
     * 更新用户
     * @param user
     * @throws UsernameNotFoundException
     */
    void update(User user) throws UsernameNotFoundException;
    /**
     * 获取用户
     * @param name
     */
    User getByEmail(String name);

    /**
     * 注册
     * @param userDto
     * @return
     */
    User registerNewUserAccount(UserDto userDto) throws EmailExistsException;

    /**
     * 用户是否存在
     * @param userDto
     * @return
     */
    boolean checkUserExist(UserDto userDto);
}
