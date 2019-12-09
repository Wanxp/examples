package com.wanxp.postmanapi.config.authentication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configurers.provisioning.InMemoryUserDetailsManagerConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter implements WebMvcConfigurer {

    public static final String PASSWORD = "admin";
    public static final String ADMIN_USER_NAME = "admin";


    @Autowired
    private AuthenticationEntryPoint authenticationEntryPoint;

    /**
     * 配置路径和鉴权方式
     * @param security
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity security) throws Exception {
        security.cors().and().csrf().disable();
        //配置需要鉴权的url
        security.authorizeRequests().mvcMatchers("/auth/*").authenticated();
        //验证用户名密码
        security.httpBasic().authenticationEntryPoint(authenticationEntryPoint);
    }

    /**
     * 密码加密
     * @return
     */
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }

    /**
     * 内存中构建一个用户数据
     * @param builder
     * @throws Exception
     */
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder builder) throws Exception {
        String encrytedPassword = this.passwordEncoder().encode(PASSWORD);
        InMemoryUserDetailsManagerConfigurer<AuthenticationManagerBuilder> memoryUserDetailsManagerConfigurer = builder.inMemoryAuthentication();
        UserDetails admin = User.withUsername(ADMIN_USER_NAME).password(encrytedPassword).roles("admin").build();
        memoryUserDetailsManagerConfigurer.withUser(admin);
    }
}
