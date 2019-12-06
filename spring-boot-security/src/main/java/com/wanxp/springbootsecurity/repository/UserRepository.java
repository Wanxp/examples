package com.wanxp.springbootsecurity.repository;

import com.wanxp.springbootsecurity.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * 用户数据仓库
 */
@Repository
public interface UserRepository extends CrudRepository<User, String> {
}
