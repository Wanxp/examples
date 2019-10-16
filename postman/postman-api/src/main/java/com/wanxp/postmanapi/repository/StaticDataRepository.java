package com.wanxp.postmanapi.repository;

import com.wanxp.postmanapi.dto.AddressDTO;
import com.wanxp.postmanapi.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.concurrent.TimeUnit;

@Component
public class StaticDataRepository {

    @Autowired
    private RedisTemplate<Object, Object> redisTemplate;

    @PostConstruct
    public void init() {
        AddressDTO addressDTO1 =  new AddressDTO(1, "CN","SHA","飞虹路", 567 );
        AddressDTO addressDTO2 =  new AddressDTO(2,  "CN","HKG","九龙", 227 );
        AddressDTO addressDTO3 =  new AddressDTO(3,  "USA","CA","Bull", 234 );
        AddressDTO addressDTO4 =  new AddressDTO(4,  "CAN","SA","Holly", 2);
        redisTemplate.opsForValue().set("address.1",addressDTO1,1, TimeUnit.DAYS);
        redisTemplate.opsForValue().set("address.2",addressDTO2,1, TimeUnit.DAYS);
        redisTemplate.opsForValue().set("address.3",addressDTO3,1, TimeUnit.DAYS);
        redisTemplate.opsForValue().set("address.4",addressDTO4,1, TimeUnit.DAYS);

        redisTemplate.opsForValue().set("user.1", new UserDTO(1, "张三", new Integer(22).byteValue(), 1),1, TimeUnit.DAYS);
        redisTemplate.opsForValue().set("user.2", new UserDTO(2, "李四", new Integer(18).byteValue(),2),1, TimeUnit.DAYS);
        redisTemplate.opsForValue().set("user.3", new UserDTO(3, "Jerry", new Integer(56).byteValue(),3),1, TimeUnit.DAYS);
        redisTemplate.opsForValue().set("user.4", new UserDTO(4, "Rick",new Integer(100).byteValue(), 4),1, TimeUnit.DAYS);


    }

}
