package com.wanxp.datasource.service;

import com.wanxp.datasource.dto.UserDTO;
import com.wanxp.datasource.entity.User;

import java.util.List;

public interface UserService {
    User addToMaster(User user);
    User addToSlave(User user);
    User getFromMaster(Long id);
    User getFromSlave(Long id);
    User getMaxIdUserFromMaster();
    User getMaxIdUserFromSlave();
}
