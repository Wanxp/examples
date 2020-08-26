package com.wanxp.batchtest.model.entity.primary;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Tolerate;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.List;


@Entity
@Data
@Builder
public class ChannelRule {
	private BigDecimal heightMax;

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
	private BigDecimal heightMin;
	private String heightUnit;
	/**
	 * length * width * height
	 */
	private BigDecimal volumeMin;
	private BigDecimal widthMax;
	private BigDecimal widthMin;
	private String widthUnit;
	/**
	 * (width + height) * 2
	 */
	private BigDecimal girthMin;
	private BigDecimal volumeMax;
	private String volumeUnit;
	private String girthUnit;
	private BigDecimal girthMax;
	/**
	 * length + width + height
	 */
	private BigDecimal lwhMax;
	private BigDecimal lwhMin;
	private String lwhUnit;
	/**
	 * length + (l(min s) + w(min s)) * 2
	 */
	private BigDecimal lMinSMax;
	private BigDecimal lMinSMin;
	private String lMinSUnit;

	@Tolerate
	public ChannelRule() {
	}

	private BigDecimal bagWeightMax;
	private BigDecimal bagWeightMin;
	private String bagWeightUnit;
	private BigDecimal amountMax;
	private BigDecimal amountMin;
	@ElementCollection(targetClass = String.class)
	private List<String> currency;
	@ElementCollection(targetClass = String.class)
	private List<String> incoterm;
	private BigDecimal weightMin;
	private BigDecimal weightMax;
	private String weightUnit;
	private String remark;

}
