package com.wanxp.batch.excel.component.bean.handler;

import com.wanxp.batch.excel.constant.Constant;
import com.wanxp.batch.excel.entity.BeanProperty;
import com.wanxp.batch.excel.model.dto.DataBaseBeanDto;
import com.wanxp.batch.excel.util.NumberUtils;
import org.springframework.batch.item.ItemProcessor;

import static com.wanxp.batch.excel.constant.Constant.DataBaseJavaType.getByTypeName;

public class BeanPropertyProcessor implements ItemProcessor<DataBaseBeanDto, BeanProperty> {


    private volatile int position = 0;


    @Override
    public BeanProperty process(DataBaseBeanDto item) throws Exception {
        BeanProperty beanProperty = new BeanProperty();
        beanProperty.setField(item.getFieldName());
        Constant.DataBaseJavaType dataBaseJavaType = getByTypeName(item.getTypeName());
        beanProperty.setTypeName(dataBaseJavaType != null ? dataBaseJavaType.getJavaTypeName() : null);
        beanProperty.setExample(item.getExample());
        beanProperty.setPosition(position++);
        beanProperty.setFieldName(item.getFieldCNName());
        beanProperty.setRequired(item.getRequiredString() != null && item.getRequiredString().contains("Y"));
        beanProperty.setMaxLength(NumberUtils.isNumberString(item.getMaxLength()) ? Integer.valueOf(item.getMaxLength()) : null);
        beanProperty.setRemark(new StringBuilder(
                item.getDescription()).append(
                item.getRemark() != null && !item.getRemark().equals("") ? ("，" + item.getRemark()) : "").toString());
        return beanProperty;
    }
}