package com.wanxp.batch.excel.component.bean.handler;

import com.wanxp.batch.excel.model.dto.DataBaseBeanDto;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;
import org.springframework.validation.BindException;

public class BeanPropertySetMapper implements FieldSetMapper<DataBaseBeanDto> {
    @Override
    public DataBaseBeanDto mapFieldSet(FieldSet fieldSet) throws BindException {
        DataBaseBeanDto dataBaseBeanDto = new DataBaseBeanDto();
        dataBaseBeanDto.setFieldName(fieldSet.readString("field"));
        dataBaseBeanDto.setFieldCNName(fieldSet.readString("fieldName"));
        dataBaseBeanDto.setDescription(fieldSet.readString("description"));
        dataBaseBeanDto.setTypeName(fieldSet.readString("type"));
        dataBaseBeanDto.setMaxLength(fieldSet.readString("maxLength"));
        dataBaseBeanDto.setRequiredString(fieldSet.readString("required"));
        dataBaseBeanDto.setRemark(fieldSet.readString("remark"));
        dataBaseBeanDto.setExample(fieldSet.readString("example"));
        return dataBaseBeanDto;
    }
}
