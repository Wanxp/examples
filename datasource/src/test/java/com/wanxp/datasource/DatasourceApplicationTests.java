package com.wanxp.datasource;

import com.wanxp.datasource.dao.UserDao;
import com.wanxp.datasource.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Random;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class DatasourceApplicationTests {

    @Autowired
    private UserDao userDao;

    @Test
    public void contextLoads() {
    }

    @Test
    public void testUserDao() {
        Random random = new Random();
        //Master主数据库测试
        log.info("############################测试 主数据库(数据库Master) 查询 ############################");
        User maxIdUserMaster = userDao.getMaxIdUserFromMaster();
        log.info("Master数据库 查询结果为:" + maxIdUserMaster);
        log.info("############################测试 主数据库(数据库Master) 新增 ############################");
        Long nextIdMaster = maxIdUserMaster == null ? 0 : maxIdUserMaster.getId()+1;
        User userMaster = new User();
        userMaster.setId(nextIdMaster);
        userMaster.setName("Master数据库用户" + nextIdMaster);
        userMaster.setAge(random.nextInt(100));
        userDao.addToMaster(userMaster);
        userMaster = userDao.getFromMaster(nextIdMaster);
        log.info("Master数据库 新增结果为:" + userMaster);

        //Slave数据库测试
        log.info("############################测试 主数据库(数据库Slave) 查询 ############################");
        User maxIdUserSlave = userDao.getMaxIdUserFromMaster();
        log.info("Master数据库 查询结果为:" + maxIdUserSlave);
        log.info("############################测试 主数据库(数据库Slave) 新增 ############################");
        Long nextIdSlave = maxIdUserSlave == null ? 0 : maxIdUserSlave.getId()+1;
        User userSlave= new User();
        userSlave.setId(nextIdSlave);
        userSlave.setName("Master数据库用户" + nextIdSlave);
        userSlave.setAge(random.nextInt(100));
        userDao.addToMaster(userSlave);
        userSlave = userDao.getFromMaster(nextIdSlave);
        log.info("Master数据库 nextIdSlave:" + userSlave);
    }
}
