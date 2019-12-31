package com.wanxp.srping.batchtest;

import com.wanxp.batchtest.dao.secondary.ChannelRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestRepository extends BaseRepositoryTests {

    //    @MockBean
    @Autowired
    private ChannelRepository channelRepository;


    private int CHANNEL_ID_FOR_TEST = 0;

//    @Test
//    public void channelShouldHaveData() {
//        Channel channel = doAnswer((invocation) -> {
//            Channel c = invocation.getArgument(0);
//            c.setChannelId(CHANNEL_ID_FOR_TEST);
//            return null;
//        }).when(channelRepository).save(any(Channel.class));
//    }

    @Test
    public void testRepository() {
        channelRepository.findAll();
    }
}
