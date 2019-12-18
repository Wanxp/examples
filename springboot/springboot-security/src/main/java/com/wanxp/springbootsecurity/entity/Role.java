package com.wanxp.springbootsecurity.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.redis.core.RedisHash;
import org.springframework.security.core.GrantedAuthority;

/**
 * 角色模型
 */
@RedisHash("role")
@Data
public class Role implements GrantedAuthority {
    /**
     * 角色名称
     */
    @Id
    private String name;
    /**
     * 角色权限名
     */
    private String authority;
    /**
     * 描述
     */
    private String description;

    @Override
    public String getAuthority() {
        return authority;
    }
}
