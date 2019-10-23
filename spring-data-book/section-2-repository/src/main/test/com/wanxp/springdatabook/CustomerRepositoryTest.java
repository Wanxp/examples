package com.wanxp.springdatabook;


import com.wanxp.springdatabook.repostiory.core.Customer;
import com.wanxp.springdatabook.repostiory.core.CustomerRepository;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Sort;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class CustomerRepositoryTest {

    @Autowired
    private CustomerRepository customerRepository;

    @Test
    public void testCumstomerRepository() {
        List<Customer> customerRepository.findByLastName("tom", Sort.by(Sort.Direction.DESC, "findByLastName"));
    }
}
