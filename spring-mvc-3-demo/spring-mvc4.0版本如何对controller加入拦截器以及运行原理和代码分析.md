# 目的
* 讲解exceptionHandler的一种实现方式以及运行机制
* 讲解interceptor的一种controller的返回处理方式运行机制
# 背景
* srping-webmvc:3.2.3 
* idea18
# ControllerAdvice与ExceptionHandler注解的一个使用方式实例
* 使用idea创建一个空的maven项目: File -> New -> Project -> Maven ->选择
org.apache.maven.archetypes:maven-archetype-webapp -> Next(下一步) ->输入groupId
和articileId
* 修改pom.xml，引入
```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <artifactId>spring-mvc-3-demo</artifactId>
        <groupId>com.wanxp</groupId>
        <version>1.0-SNAPSHOT</version>
    <modelVersion>4.0.0</modelVersion>

    <!-- springmvc依赖 -->
    <dependencies>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>3.2.3.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-web</artifactId>
            <version>3.2.3.RELEASE</version>
        </dependency>
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>javax.servlet-api</artifactId>
            <version>4.0.1</version>
        </dependency>

        <!--此处可不引入，这部分依赖是使用jstl表达式功能Tag libs support for view layer -->

        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.2</version>
            <scope>runtime</scope>
        </dependency>

        <dependency>
            <groupId>taglibs</groupId>
            <artifactId>standard</artifactId>
            <version>1.1.2</version>
            <scope>runtime</scope>
        </dependency>

        <!-- 序列化依赖 -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.4.1.3</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-core</artifactId>
            <version>2.4.1</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-annotations</artifactId>
            <version>2.4.1</version>
        </dependency>

    </dependencies>

</project>
```
* 修改web.xml为以下内容
```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">
    <display-name>spring-mvc-3-demo</display-name>
    <servlet>
        <servlet-name>dispatcher</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <load-on-startup>1</load-on-startup>
    </servlet>
    <servlet-mapping>
        <servlet-name>dispatcher</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
</web-app>
``` 
修改dispatcher-servlet.xml
```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
       http://www.springframework.org/schema/beans/spring-beans.xsd http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd">
    <context:component-scan base-package="com.wanxp.springmvc3demo"/>
    <bean class="org.springframework.web.servlet.mvc.annotation.DefaultAnnotationHandlerMapping"/>
    <bean class="org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter"/>
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="prefix" value="/views/"/>
        <property name="suffix" value=".jsp"/>
    </bean>
</beans>
```
* 新增控制层类
新增controller
```java
package com.wanxp.springmvc3demo.controller;

import com.wanxp.springmvc3demo.dto.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@RequestMapping("user")
@EnableWebMvc
public class RestFulController {

    @RequestMapping(value = "/id")
    @ResponseBody
    public UserDTO getUserDTO() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("Jack");
        userDTO.setAge(11);
        return userDTO;
    }

    @RequestMapping(value = "/exception")
    @ResponseBody
    public UserDTO getException() {
        UserDTO userDTO = new UserDTO();
        userDTO.setName("Exception");
        userDTO.setAge(11);
        throw new RuntimeException("Exception");
    }
}
```
* 新增模型类
UserDTO
```java
package com.wanxp.springmvc3demo.dto;

public class UserDTO {
    private String name;
    private Integer age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
```
* 创建Controller增强类，用于统一拦截处理Controller抛出的一场
MyControllerAdviceHandler
```java
package com.wanxp.springmvc3demo.interceptor;

import com.wanxp.springmvc3demo.result.PlatformResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class MyControllerAdviceHandler {

    @ExceptionHandler
    @ResponseBody
    public PlatformResult handle(Exception e) {
        System.out.println("enter controller advice handler");
        return PlatformResult.failure("exception");
    }
}
```
* 创建静态维护类Constant，维护一些静态常量
```java
package com.wanxp.springmvc3demo.constant;

public class Constant {
    public static final int SUCCESS = 0;
    public static final int FAIL = 1;
}
```
* 配置IDE运行项目
* Postman 请求测试
* * 正常请求内容，获取com.wanxp.springmvc3demo.controller.RestFulController.getUserDTO() 的内容
```http request
POST http://127.0.0.1:8080/user/id/
```
返回内容为
```json
{
  "name": "Jack",
  "age": 11 
 }
```
* * 请求内部可抛异常内容，获取com.wanxp.springmvc3demo.controller.RestFulController.getException() 的内容
```http request
POST http://127.0.0.1:8080/user/exception/
```
控制台输出
```text
enter controller advice handler
```
同时返回内容为
```json
{
  "code": 1,
  "mssage": "exception"
 }
```


# ControllerAdvice与DispattchServlet源码解析
## ExceptionHandler注解是如何工作的 
  对于ExceptionHandler来说有springmvc自动配置的默认方式有可以用户自定义的方式
### spring-mvc默认配置方式
包含两部分DefaultHandlerExceptionResolver和ResponseEntityExceptionHandler
默认的异常处理器ResponseEntityExceptionHandler和Resolver:DefaultHandlerExceptionResolver
#### 
ModelAttribute:RequestMappingHandlerAdapter