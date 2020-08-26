package com.wanxp.springdatabook.repostiory.core;

import lombok.Data;

import javax.persistence.Embeddable;

@Data
@Embeddable
public class EmailAddress {
	private String email;
}
