package com.wanxp.datasource.service.impl;

import com.wanxp.datasource.dao.UserDao;
import com.wanxp.datasource.dto.UserDTO;
import com.wanxp.datasource.entity.User;
import com.wanxp.datasource.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Override
    public User slaveFindAndMasterCreate() {
        User userSlave = userDao.getMaxIdUserFromSlave();
        User createUser = new User();
        createUser.setName("originSlaveToMaster,originId:"+userSlave.getId());
        createUser.setAge(11);
        userDao.addToMaster(createUser);
        return createUser;
    }

    @Transactional
    @Override
    public Map<String, User> transactionalInMaster() {
        User userMaster = userDao.getMaxIdUserFromSlave();
        User createUser1 = new User();
        createUser1.setName("transactional:OriginMaster,originId:"+userMaster.getId());
        createUser1.setAge(11);
        userDao.addToMaster(createUser1);
        User createUser2 = new User();
        createUser2.setName("transactional:OriginMaster,originId:"+userMaster.getId());
        createUser2.setAge(11);
        userDao.addToMaster(createUser2);
        Map<String, User> userMap = new HashMap<>();
        userMap.put("origin", userMaster);
        userMap.put("firstCopy", createUser1);
        userMap.put("lastCopy", createUser2);
        return userMap;
    }

    @Transactional
    @Override
    public Map<String, User> transactionalInMasterFaield() {
        User userMaster = userDao.getMaxIdUserFromSlave();
        User createUser1 = new User();
        createUser1.setName("transactional:OriginMaster,originId:"+userMaster.getId());
        createUser1.setAge(11);
        userDao.addToMaster(createUser1);
        User createUser2 = new User();
        createUser2.setName("transactional:OriginMaster,originId:"+userMaster.getId());
        createUser2.setAge(11);
        userDao.addToMaster(createUser2);
        throw new RuntimeException(" throw Exception in Transactional test");

    }
}
