package com.wanxp.jobmanager.repository;

import com.wanxp.jobmanager.model.entity.DTSResult;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DTSResultRepository extends JpaRepository<DTSResult, String> {
}
