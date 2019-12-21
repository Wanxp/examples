package com.wanxp.srping.batchtest.component.file.handle;

import com.wanxp.batchtest.component.file.handler.ChannelRuleProcessor;
import com.wanxp.batchtest.constant.SizeUnit;
import com.wanxp.batchtest.model.dto.ChannelFileDto;
import com.wanxp.batchtest.model.entity.primary.ChannelRule;
import com.wanxp.srping.batchtest.BatchTestApplicationTests;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.math.BigDecimal;

import static org.junit.Assert.assertEquals;

public class TestProcessor extends BatchTestApplicationTests {

    public static final SizeUnit LENGTH_UNIT = SizeUnit.M;
    public static final SizeUnit GIRTH_UNIT = SizeUnit.M;
    public static final SizeUnit VOLUME_UNIT = SizeUnit.M3;
    private static final BigDecimal LENGTH_MAX = new BigDecimal("1.05");
    private static final BigDecimal GIRTH_MAX = new BigDecimal("1.4");
    private static final BigDecimal VOLUME_MAX = new BigDecimal("0.25");
    private ChannelFileDto channelFileDto;
    @Autowired
    private ChannelRuleProcessor channelRuleProcessor;

    @Before
    public void init() {
        channelFileDto = ChannelFileDto.builder()
                .serviceName("ASP China-Australia")
                .serviceCode("UBI.ASP.CN2AU.AUPOST")
                .serviceOption("E-Parcel")
                .cnName("澳洲全程（ASP和线下客户）")
                .sortCode("")
                .combine(false)
                .bagWeightLimit("")
                .dimension("长≤" + LENGTH_MAX + LENGTH_UNIT.getCnName() + "，最大围长 (宽+高）×2 ≤"
                        + GIRTH_MAX + GIRTH_UNIT.getCnName() + "，体积≤"
                        + VOLUME_MAX + VOLUME_UNIT.getCnName())
                .declareValue("0<Value<=1000 AUD")
                .incoterm("DDU/DDP")
                .weight(">5kg")
                .remark("从2020年1月1日起， max weight 22kg， max length 100cm")
                .build();
    }


    @Test
    public void testChannelRuleProcessor() throws Exception {
        ChannelRule channelRule = channelRuleProcessor.process(channelFileDto);
        System.err.println(channelRule);
        assertEquals(LENGTH_MAX, channelRule.getLengthMax());
        assertEquals(LENGTH_UNIT.getType(), channelRule.getLengthUnit());
        assertEquals(GIRTH_MAX, channelRule.getGirthMax());
        assertEquals(LENGTH_UNIT.getType(), channelRule.getGirthUnit());
        assertEquals(VOLUME_MAX, channelRule.getVolumeMax());
        assertEquals(VOLUME_UNIT.getType(), channelRule.getVolumeUnit());
    }
}
