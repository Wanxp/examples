package com.wanxp.datasource.dao;

import com.wanxp.datasource.entity.User;

public interface UserDao {
    void addToMaster(User user);
    void addToSlave(User user);
    User getFromMaster(Long id);
    User getFromSlave(Long id);
    User getMaxIdUserFromMaster();
    User getMaxIdUserFromSlave();
}
