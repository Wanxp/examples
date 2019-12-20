package com.wanxp.batchtest.component.file.handler;

import com.wanxp.batchtest.model.dto.ChannelFileDto;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindException;

public class ChannelRuleSetMapper implements FieldSetMapper<ChannelFileDto> {
    @Override
    public ChannelFileDto mapFieldSet(FieldSet fieldSet) throws BindException {
        return ChannelFileDto
                .builder()
                .serviceName(fieldSet.readString("Service Name"))
                .serviceCode(fieldSet.readString("Service Code"))
                .serviceOption(fieldSet.readString("service option"))
                .cnName(fieldSet.readString("CN Name"))
                .sortCode(fieldSet.readString("Sort Code"))
                .combine(!StringUtils.isEmpty(fieldSet.readString("是否可以合并装袋")))
                .dimension(fieldSet.readString("Dimention "))
                .bagWeightLimit(fieldSet.readString("大包限重"))
                .declareValue(fieldSet.readString("Declare Value"))
                .incoterm(fieldSet.readString("incoterm"))
                .weight(fieldSet.readString("weight"))
                .remark(fieldSet.readString("remark"))
                .build();
    }
}
