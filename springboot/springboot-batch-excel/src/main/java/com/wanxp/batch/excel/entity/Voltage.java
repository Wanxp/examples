package com.wanxp.batch.excel.entity;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

//@RedisHash("voltage")
@Entity
@Data
public class Voltage {

	public Voltage() {
	}

	public Voltage(BigDecimal volt, double time) {
		this.volt = volt;
		this.time = time;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@NotNull
	private BigDecimal volt;

	@NotNull
	private double time;


}
