package com.wanxp.datasource.service.impl;

import com.wanxp.datasource.dao.UserDao;
import com.wanxp.datasource.dto.UserDTO;
import com.wanxp.datasource.entity.User;
import com.wanxp.datasource.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    
    @Autowired
    private UserDao userDao;

    @Override
    public User addToMaster(User user) {
        return userDao.addToMaster(user);
    }

    @Override
    public User addToSlave(User user) {
        return userDao.addToSlave(user);
    }

    @Override
    public User getFromMaster(Long id) {
        return userDao.getFromMaster(id);
    }

    @Override
    public User getFromSlave(Long id) {
        return userDao.getFromSlave(id);
    }

    @Override
    public User getMaxIdUserFromMaster() {
        return userDao.getMaxIdUserFromMaster();
    }

    @Override
    public User getMaxIdUserFromSlave() {
        return userDao.getMaxIdUserFromSlave();
    }
}
