package com.wanxp.springtx3demo.persistence;

import com.wanxp.springtx3demo.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
    private static final Logger log = LoggerFactory.getLogger(UserService.class);
    @Autowired
    private UserDao userDao;

    @Autowired
    private OldUserDao oldUserDao;


    @Transactional
    public void insert(User user) {
        userDao.insert(user);
        log.debug("insert success :" + user.getId());
//        throw new RuntimeException("throw error in the end");
    }

    public User get(Long id) {
        return userDao.get(id);
    }

    public User delete(Long id) {
        userDao.delete(id);
        return null;
    }

    public void handle(User user) {
        userDao.insert(user);
        oldUserDao.insert(user);
    }
}
