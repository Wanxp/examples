package com.wanxp.springbootsecurity;

import lombok.Data;
import org.springframework.data.redis.core.RedisHash;
import org.springframework.security.core.GrantedAuthority;

@RedisHash("role")
@Data
public class Role implements GrantedAuthority {

    private String authority;


    @Override
    public String getAuthority() {
        return authority;
    }
}
