package com.wanxp.srping.batchtest;

import com.wanxp.batchtest.dao.secondary.ChannelRepository;
import com.wanxp.batchtest.entity.secondary.Channel;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;

public class TestRepository extends BaseRepositoryTests {

    @Autowired
    private ChannelRepository channelRepository;


    private int CHANNEL_ID_FOR_TEST = 0;

    @Test
    public void channelShouldHaveData() {
        Channel channel = Mockito.mock(Channel.class);
        channel.setChannelId(CHANNEL_ID_FOR_TEST);
        Mockito.when(channelRepository.save(channel))
                .thenReturn(channel);

    }
}
