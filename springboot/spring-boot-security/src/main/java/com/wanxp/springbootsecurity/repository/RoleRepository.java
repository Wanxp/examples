package com.wanxp.springbootsecurity.repository;

import com.wanxp.springbootsecurity.entity.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * 角色数据仓库
 */
@Repository
public interface RoleRepository extends CrudRepository<Role, String> {
}
