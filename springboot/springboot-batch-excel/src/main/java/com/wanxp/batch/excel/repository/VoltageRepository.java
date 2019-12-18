package com.wanxp.batch.excel.repository;

import com.wanxp.batch.excel.entity.Voltage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoltageRepository extends JpaRepository<Voltage, Long> {
}
