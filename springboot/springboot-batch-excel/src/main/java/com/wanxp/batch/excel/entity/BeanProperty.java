package com.wanxp.batch.excel.entity;

import lombok.Data;

@Data
public class BeanProperty {
	private String field;
	private String example;
	private String typeName;
	private Integer maxLength;
	private Integer maxLength2;
	private boolean required;
	private Integer position;
	private String remark;
	private String fieldName;
}
