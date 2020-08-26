package com.wanxp.batch.excel.component.bean.handler;

import com.wanxp.batch.excel.constant.Constant;
import com.wanxp.batch.excel.entity.BeanProperty;
import com.wanxp.batch.excel.model.dto.BeanPropertyDto;
import com.wanxp.batch.excel.util.NumberUtils;
import org.springframework.batch.item.ItemProcessor;

import static com.wanxp.batch.excel.constant.Constant.DataBaseJavaType.getByTypeName;

public class BeanPropertyProcessor implements ItemProcessor<BeanPropertyDto, BeanProperty> {


	private volatile int position = 0;


	@Override
	public BeanProperty process(BeanPropertyDto item) throws Exception {
		BeanProperty beanProperty = new BeanProperty();
		beanProperty.setField(item.getFieldName());
		Constant.DataBaseJavaType dataBaseJavaType = getByTypeName(item.getTypeName());
		beanProperty.setTypeName(dataBaseJavaType != null ? dataBaseJavaType.getJavaTypeName() : null);
		beanProperty.setExample(item.getExample());
		beanProperty.setPosition(position++);
		beanProperty.setFieldName(item.getFieldCNName());
		beanProperty.setRequired(item.getRequiredString() != null && item.getRequiredString().contains("Y"));
		if (NumberUtils.isNumberString(item.getMaxLength())) {
			beanProperty.setMaxLength(Integer.valueOf(item.getMaxLength()));
		} else if (item.getMaxLength() != null && (item.getMaxLength().contains(",") || item.getMaxLength().contains("，"))) {
			String m = item.getMaxLength().replace("(", "")
					.replace(")", "")
					.replace("（", "")
					.replace("）", "")
					.replace("，", ",");
			String[] vs = m.split(",");
			beanProperty.setMaxLength(Integer.valueOf(vs[0]));
			beanProperty.setMaxLength2(Integer.valueOf(vs[1]));
		}
		beanProperty.setRemark(new StringBuilder(
				item.getDescription()).append(
				item.getRemark() != null && !item.getRemark().equals("") ? ("，" + item.getRemark()) : "").toString());
		return beanProperty;
	}
}