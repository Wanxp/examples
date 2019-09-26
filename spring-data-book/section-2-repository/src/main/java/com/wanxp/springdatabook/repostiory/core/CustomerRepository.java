package com.wanxp.springdatabook.repostiory.core;

import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends Repository<Customer, Long> {
}
