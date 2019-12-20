package com.wanxp.batchtest.model.dto;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Tolerate;

@Data
@Builder
public class ChannelFileDto {

    private String serviceName;
    private String serviceCode;
    private String serviceOption;
    private String cnName;
    private String sortCode;
    private Boolean combine;
    private String dimension;
    private String bagWeightLimit;
    private String declareValue;
    private String incoterm;
    private String weight;
    private String remark;

    @Tolerate
    public ChannelFileDto() {
    }
}
