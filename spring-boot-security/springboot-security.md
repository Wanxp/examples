# spring-boot-security + spring-redis-repository
## 目的
* Registration and Login: 使用spring-boot-security的用户注册，用户登录功能
* Redis Repository: 使用redis作为数据仓库
## 准备
* 本地安装并运行 redis
* idea开发工具
* pom
```xml
<dependencys>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-data-redis</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-security</artifactId>
        </dependency>
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-web</artifactId>
        </dependency> 
</dependency>    
```
* entity
```java
@RedisHash("user")
@Data
public class User implements UserDetails {
    @Id
    private String username;
    private String password;
    private boolean accountNonExpired;
    private boolean accountNonLocked;
    private boolean credentialsNonExpired;
    private boolean enabled;
    private Set<Role> authorites;
}
```
```java
@RedisHash("user")
@Data
public class User implements UserDetails {
    @Id
    private String username;
    private String password;
    private boolean accountNonExpired;
    private boolean accountNonLocked;
    private boolean credentialsNonExpired;
    private boolean enabled;
    private Set<Role> authorites;
}
```
## 引用
* [redis repository](https://docs.spring.io/spring-data/data-redis/docs/current/reference/html/#redis.repositories)  
* [registration with spring-mvc and spring-security](https://www.baeldung.com/registration-with-spring-mvc-and-spring-security)
* [Spring Security Registration Tutorial](https://www.baeldung.com/spring-security-registration)
* [Create Repository using redis in SpringBoot App](https://stackoverflow.com/questions/44997678/create-repository-using-redis-in-springboot-app)
* [Spring Data Redis](https://docs.spring.io/spring-data/data-redis/docs/current/reference/html/#reference)