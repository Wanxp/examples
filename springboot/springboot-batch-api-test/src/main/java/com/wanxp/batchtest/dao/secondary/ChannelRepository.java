package com.wanxp.batchtest.dao.secondary;

import com.wanxp.batchtest.entity.secondary.Channel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChannelRepository extends JpaRepository<Channel, Integer> {
}
