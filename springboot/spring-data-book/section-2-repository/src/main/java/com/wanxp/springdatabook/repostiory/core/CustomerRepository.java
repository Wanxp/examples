package com.wanxp.springdatabook.repostiory.core;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

import java.util.List;

@org.springframework.stereotype.Repository
public interface CustomerRepository extends Repository<Customer, Long> {
	@Query("select  c from Customer c where c.emailAddress = ?1 ")
	Customer findByEmailAddress(EmailAddress email);

	Customer findByEmailAddressAndLastName(EmailAddress address, String lastname);

	Page<Customer> findByLastName(String lastName, Pageable pageable);

	List<Customer> findByLastName(String lastname, Sort sort);

	List<Customer> findByLastNameContaining(String lastname, Pageable pageable);
}
