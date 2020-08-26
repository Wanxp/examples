package com.wanxp.batchtest.model.dto;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class SizeDto {
	private BigDecimal value;
	private String unit;
}
