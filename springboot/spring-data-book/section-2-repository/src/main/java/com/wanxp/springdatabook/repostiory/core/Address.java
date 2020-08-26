package com.wanxp.springdatabook.repostiory.core;

import lombok.Data;

import javax.persistence.Entity;

@Entity
@Data
public class Address extends AbstractEntity {
	private String street;
	private String contry;
	private String city;
}
