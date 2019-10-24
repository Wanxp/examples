package com.wanxp.springdatabook.repostiory.core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import java.util.List;

@Component
public class CustomerRepositoryClient {

    private final CustomerRepository repository;

    @Autowired
    private CustomerRepositoryClient(CustomerRepository repository) {
        Assert.notNull(repository);
        this.repository = repository;
    }

    public List<Customer> getByLastName() {
        List<Customer> customerRepository.findByLastName("Tom", Sort.by(Sort.Direction.DESC, "findByLastName"));
    }
}
