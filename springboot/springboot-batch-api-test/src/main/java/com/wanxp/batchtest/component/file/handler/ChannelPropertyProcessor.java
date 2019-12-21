package com.wanxp.batchtest.component.file.handler;

public interface ChannelPropertyProcessor {
    String SMALL = "[＜<≤*<**<**不超过*]+[=]?";
    String GREAT = "[>*>**>**超过*]+[=]?";

    String DIGITAL = "[\\d.]+";
    String SIZE_UNIT = "[米*厘米**cm**CM**立方米**毫米**m3*]+";
    String WEIGHT_SIZE_UNIT = "[gG*kg**kG**Kg**KG*]+";
    String SPACE = "\\s?";

    String CURRENCY = "[*CAD**AUD**EUR**GBP**USD*]+";

    String INCOTERM = "[*DDU**DDP*]+";
}
