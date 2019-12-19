package com.wanxp.batchtest.dao.primary;

import com.wanxp.batchtest.entity.primary.ChannelRule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChannelRuleRepository extends JpaRepository<ChannelRule, Long> {
}
