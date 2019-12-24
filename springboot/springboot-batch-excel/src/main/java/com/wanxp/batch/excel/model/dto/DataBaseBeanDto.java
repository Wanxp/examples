package com.wanxp.batch.excel.model.dto;

import lombok.Data;

@Data
public class DataBaseBeanDto {
    private String fieldName;
    private String fieldCNName;
    private String description;
    private String typeName;
    private String maxLength;
    private String requiredString;
    private String remark;
    private String example;
}
