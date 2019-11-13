package com.wanxp.springtx3demo.persistence;

import com.wanxp.springtx3demo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;


    @Transactional
    public void insert(User user) {
        userDao.insert(user);
        System.out.println("insert success :" + user.getId());
//        throw new RuntimeException("throw error in the end");
    }

    public User get(Long id) {
        return userDao.get(id);
    }

    public User delete(Long id) {
        userDao.delete(id);
        return null;
    }
}
