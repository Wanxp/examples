package com.wanxp.jobmanager.service.impl;

import com.wanxp.jobmanager.model.dto.DTSResultDTO;
import com.wanxp.jobmanager.model.entity.DTSResult;
import com.wanxp.jobmanager.repository.DTSResultRepository;
import com.wanxp.jobmanager.service.DTSResultService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("dtsResultService")
public class DTSResultServiceImpl implements DTSResultService {

    @Autowired
    private DTSResultRepository repository;

    @Override
    public void save(DTSResultDTO result) {
        DTSResult dtsResult = new DTSResult();
        BeanUtils.copyProperties(result, dtsResult);
        repository.save(dtsResult);
    }
}
