package com.wanxp.datasource;

import com.wanxp.datasource.dao.UserDao;
import com.wanxp.datasource.entity.User;
import com.wanxp.datasource.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Map;
import java.util.Random;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class DatasourceApplicationTests {

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserService userService;

    @Before
    public void init() {
        User userSlave = new User();
        userSlave.setAge(18);
        userSlave.setName("slave-test");
        userService.addToSlave(userSlave);
        User userMaster = new User();
        userMaster.setAge(18);
        userMaster.setName("master-test");
        userService.addToMaster(userMaster);
    }


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

    /**
     * <h1>测试service层事务</h1>
     * 1. 首先会从master 中读取最大的Id的用户，然后复制两份信息写入master数据库<br>
     * 2. 其次会从master 中读取最大的Id的用户，然后复制两份信息写入master数据库,在写入第二份用户后抛出异常，第二份用户是否会成功添加到数据库<br>
     * 如果事务正常就会导致第二次的复制写入数据库会回滚，则测试便会通过:即最新的用户id会等于事务开启前的id
     *
     */
    @Test
    public void testUserService() {
        log.info("############################测试 读取从数据库(数据库 Slave) 写入 主数据库(数据库 Master) ############################");
        User userM = userService.slaveFindAndMasterCreate();
        log.info("成功,新增用户为:" + userM);
        log.info("############################测试 读取主数据库(数据库 Master) 写入 主数据库(数据库 Master) 再次写入住数据库 ############################");
        Map<String, User> userMap = userService.transactionalInMaster();
        log.info("成功,结果为:" + userMap);
        log.info("############################测试 读取主数据库(数据库 Master) 写入 主数据库(数据库 Master) 再次写入住数据库:失败回滚 ############################");
        try {
            Map<String, User> userMapFailed = userService.transactionalInMasterFaield();
        }catch (RuntimeException e) {
        }
        User userMaxId = userService.getMaxIdUserFromMaster();
        Assert.assertEquals(userMaxId.getId(), userMap.get("lastCopy").getId());
        log.info("成功,结果为:" + userMap);
    }


}
