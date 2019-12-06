package com.wanxp.springbootsecurity.dto;

import com.wanxp.springbootsecurity.entity.Role;
import com.wanxp.springbootsecurity.validation.user.group.Registry;
import lombok.Data;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.util.List;

/**
 * 用户DTO类
 */
@Data
public class UserDto implements UserDetails {
    /**
     * 用户名
     */
    @NotBlank(groups = {Registry.class})
    private String username;
    /**
     * 密码
     */
    @NotBlank(groups = {Registry.class})
    private String password;
    /**
     * 邮箱
     */
    @NotBlank(groups = {Registry.class})
    @Email(groups = {Registry.class})
    private String email;
    /**
     * 是否超期
     */
    private boolean accountNonExpired;
    /**
     * 是否锁定
     */
    private boolean accountNonLocked;
    /**
     * 身份是否超期
     */
    private boolean credentialsNonExpired;
    /**
     * 是否有效
     */
    private boolean enabled;
    /**
     * 权限
     */
    private List<Role> authorises;

    @Override
    public List<Role> getAuthorities() {
        return authorises;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return accountNonExpired;
    }

    @Override
    public boolean isAccountNonLocked() {
        return accountNonLocked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return credentialsNonExpired;
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }
}
