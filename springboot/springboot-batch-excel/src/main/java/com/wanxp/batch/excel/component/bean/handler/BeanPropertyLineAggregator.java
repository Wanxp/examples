package com.wanxp.batch.excel.component.bean.handler;

import com.wanxp.batch.excel.entity.BeanProperty;
import com.wanxp.batch.excel.util.StringUtils;
import org.springframework.batch.item.file.transform.LineAggregator;

import static com.wanxp.batch.excel.constant.Constant.DataBaseJavaType.*;

public class BeanPropertyLineAggregator implements LineAggregator<BeanProperty> {
    @Override
    public String aggregate(BeanProperty item) {
        StringBuilder stringBuilder = new StringBuilder();
        if (item.isRequired()) {
            if (VARCHAR.equals(getByTypeName(item.getTypeName()))) {
                stringBuilder.append("\t@NotBlank\n");
            } else if (LIST.equals(getByTypeName(item.getTypeName()))) {
                stringBuilder.append("\t@NotEmpty\n");
            } else {
                stringBuilder.append("\t@NotNull\n");
            }
        }
        if (item.getMaxLength() != null) {
            if (VARCHAR.equals(getByTypeName(item.getTypeName()))) {
                stringBuilder.append("\t@Length(max = ").append(item.getMaxLength()).append(")\n");
            }
        }
        stringBuilder.append("\t@ApiModelProperty(value = \"").append(item.getFieldName()).append("\"");
        if (!StringUtils.isEmpty(item.getExample())) {
            stringBuilder.append(", example = \"").append(item.getExample()).append("\"");
        }
        if (item.isRequired()) {
            stringBuilder.append(", required = true");
        }
        if (item.getPosition() != null) {
            stringBuilder.append(", position = ").append(item.getPosition());
        }
        if (!StringUtils.isEmpty(item.getRemark()) || item.getMaxLength() != null) {

            stringBuilder.append(", notes = \"");
            stringBuilder.append(!StringUtils.isEmpty(item.getRemark()) ? item.getRemark() : "");
            stringBuilder.append(item.getMaxLength() != null ? "，最大长度" + item.getMaxLength() : "").append("\"");
        }
        stringBuilder.append(")\n");
        stringBuilder.append("\tprivate ").append(item.getTypeName()).append(" ").append(item.getField()).append(";\n");
        return stringBuilder.toString();
    }
}
