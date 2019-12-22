package com.wanxp.batchtest.component.file.handler;

import com.wanxp.batchtest.model.dto.ChannelFileDto;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindException;

@Component
public class ChannelRuleSetMapper implements FieldSetMapper<ChannelFileDto> {
    @Override
    public ChannelFileDto mapFieldSet(FieldSet fieldSet) throws BindException {
        return ChannelFileDto
                .builder()
                .serviceName(fieldSet.readString(0))
                .serviceCode(fieldSet.readString(1))
                .serviceOption(fieldSet.readString(2))
                .cnName(fieldSet.readString(3))
                .sortCode(fieldSet.readString(4))
                .combine(!StringUtils.isEmpty(fieldSet.readString(5)))
                .dimension(fieldSet.readString(6))
                .bagWeightLimit(fieldSet.readString(6))
                .declareValue(fieldSet.readString(7))
                .incoterm(fieldSet.readString(8))
                .weight(fieldSet.readString(9))
                .remark(fieldSet.readString(10))
                .mark(fieldSet.readString(11))
                .build();
    }
}
