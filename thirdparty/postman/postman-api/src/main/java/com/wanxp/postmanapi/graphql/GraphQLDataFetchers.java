package com.wanxp.postmanapi.graphql;

import com.wanxp.postmanapi.dto.UserDTO;
import graphql.schema.DataFetcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class GraphQLDataFetchers {

    @Autowired
    private RedisTemplate<Object, Object> redisTemplate;

    public DataFetcher getUserByIdDataFetcher() {
        return dataFetchingEnvironment -> {
            String userId = "user." + dataFetchingEnvironment.getArgument("id");
            return redisTemplate.opsForValue().get(userId);
        };
    }

    public DataFetcher getAddressDataFetcher() {
        return dataFetchingEnvironment -> {
            UserDTO user = dataFetchingEnvironment.getSource();
            String addressId = "address." + user.getAddressId();
            return redisTemplate.opsForValue().get(addressId);
        };
    }
}
