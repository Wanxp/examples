package com.wanxp.springdatabook.repostiory.core;

import lombok.Data;

@Data
public class Customer extends AbstractEntity {
	private String firstName;
	private String lastName;
	private EmailAddress emailAddress;
	private Address address;
}
