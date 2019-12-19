package com.wanxp.batchtest.entity.primary;

import lombok.Data;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.List;


@Entity
@Data
public class ChannelRule {
    @Id
    private Integer id;
    private String serviceName;
    private String serviceCode;
    private String serviceOption;
    private String cnName;
    private String sortCode;
    private BigDecimal lengthMax;
    private BigDecimal lengthMin;
    private String lengthUnit;
    private BigDecimal highMax;
    private BigDecimal highMin;
    private String highUnit;
    private BigDecimal widthMax;
    private BigDecimal widthMin;
    private String widthUnit;
    /**
     * length * width * hight
     */
    private BigDecimal volumeMin;
    private BigDecimal volumeMax;
    private String volumeUnit;
    /**
     * (width + hight) * 2
     */
    private BigDecimal girthMin;
    private BigDecimal girthMax;
    private String grithUnit;
    private BigDecimal bagWeightMax;
    private BigDecimal bagWeightMin;
    private BigDecimal amountMax;
    private BigDecimal amountMin;
    @ElementCollection(targetClass = String.class)
    private List<String> currency;
    @ElementCollection(targetClass = String.class)
    private List<String> incoterm;
    private BigDecimal weightMin;
    private BigDecimal weightMax;
    private String remark;

}
