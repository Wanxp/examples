package com.wanxp.srping.batchtest;

import com.wanxp.batchtest.dao.secondary.ChannelRepository;
import com.wanxp.batchtest.model.entity.secondary.Channel;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.mock.mockito.MockBean;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doAnswer;

public class TestRepository extends BaseRepositoryTests {

    @MockBean
    private ChannelRepository channelRepository;


    private int CHANNEL_ID_FOR_TEST = 0;

    @Test
    public void channelShouldHaveData() {
        Channel channel = doAnswer((invocation) -> {
            Channel c = invocation.getArgument(0);
            c.setChannelId(CHANNEL_ID_FOR_TEST);
            return null;
        }).when(channelRepository).save(any(Channel.class));
    }
}
