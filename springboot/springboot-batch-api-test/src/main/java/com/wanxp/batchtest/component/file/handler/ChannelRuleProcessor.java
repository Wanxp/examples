package com.wanxp.batchtest.component.file.handler;

import com.wanxp.batchtest.constant.SizeUnit;
import com.wanxp.batchtest.dao.secondary.ChannelRepository;
import com.wanxp.batchtest.model.dto.ChannelFileDto;
import com.wanxp.batchtest.model.dto.SizeDto;
import com.wanxp.batchtest.model.entity.primary.ChannelRule;
import com.wanxp.batchtest.model.entity.secondary.Channel;
import com.wanxp.batchtest.util.PatternBuilder;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.wanxp.batchtest.component.file.handler.ChannelPropertyProcessor.CURRENCY;
import static com.wanxp.batchtest.component.file.handler.ChannelPropertyProcessor.DIGITAL;
import static com.wanxp.batchtest.component.file.handler.ChannelPropertyProcessor.GREAT;
import static com.wanxp.batchtest.component.file.handler.ChannelPropertyProcessor.SMALL;
import static com.wanxp.batchtest.component.file.handler.ChannelPropertyProcessor.SPACE;
import static com.wanxp.batchtest.component.file.handler.ChannelPropertyProcessor.WEIGHT_SIZE_UNIT;


@Component
public class ChannelRuleProcessor implements ItemProcessor<ChannelFileDto, ChannelRule> {

	@Autowired
	private ChannelRepository channelRepository;

	@Autowired
	private ChannelRuleDimensionProcessor channelRuleDimensionProcessor;

	@Override
	public ChannelRule process(ChannelFileDto item) throws Exception {
		if (item != null && "*".equals(item.getMark()))
			return null;
		Channel channel = channelRepository.getByCode(item.getServiceCode());
		if (channel == null)
			return null;
		ChannelRule channelRule = ChannelRule.builder()
				.id(channel.getChannelId())
				.serviceCode(item.getServiceCode())
				.serviceOption(item.getServiceOption())
				.cnName(item.getServiceName())
				.sortCode(item.getSortCode())
				.build();
		channelRuleDimensionProcessor.process(item, channelRule);
		processBag(item, channelRule);
		processIncoterm(item, channelRule);
		processAmount(item, channelRule);
		processWeightMax(item, channelRule);
		processWeightMin(item, channelRule);
		return channelRule;
	}

	/**
	 * 处理 大袋重量
	 *
	 * @param channelRule
	 * @param item
	 */
	private void processBag(ChannelFileDto item, ChannelRule channelRule) {
		String bagInfo = item.getBagWeightLimit();
		if (StringUtils.isEmpty(bagInfo))
			return;
		SizeDto sizeDto = processSize(bagInfo, "([\\d]+)([KG]+)");
		channelRule.setBagWeightMax(sizeDto.getValue());
		channelRule.setBagWeightUnit(sizeDto.getUnit());
	}

	/**
	 * 处理 大袋重量
	 *
	 * @param channelRule
	 * @param item
	 */
	private void processAmount(ChannelFileDto item, ChannelRule channelRule) {
		String declareValue = item.getDeclareValue();
		if (StringUtils.isEmpty(declareValue))
			return;
		SizeDto sizeDto = processSize(declareValue,
				PatternBuilder.patternBuilder("Value")
						.include(SMALL)
						.includeGroup(DIGITAL)
						.include(SPACE)
						.includeGroup(CURRENCY)
						.build()
		);
		channelRule.setBagWeightMax(sizeDto.getValue());
		channelRule.setBagWeightUnit(sizeDto.getUnit());
	}

	/**
	 * 处理 大袋重量
	 *
	 * @param channelRule
	 * @param item
	 */
	private void processIncoterm(ChannelFileDto item, ChannelRule channelRule) {
		String incoterm = item.getIncoterm();
		if (StringUtils.isEmpty(incoterm))
			return;
		List<String> incoterms = PatternBuilder.patternBuilder("Value")
				.include(SMALL)
				.includeGroup(DIGITAL)
				.include(SPACE)
				.includeGroup(CURRENCY)
				.allTouchList(incoterm);
		channelRule.setIncoterm(incoterms);
	}

	/**
	 * 处理 重量
	 *
	 * @param channelRule
	 * @param item
	 */
	private void processWeightMax(ChannelFileDto item, ChannelRule channelRule) {
		String weight = item.getWeight();
		if (StringUtils.isEmpty(weight))
			return;
		SizeDto sizeDto = processSize(weight, PatternBuilder.patternBuilder()
				.include(SMALL)
				.includeGroup(DIGITAL)
				.include(SPACE)
				.includeGroup(WEIGHT_SIZE_UNIT)
				.build());
		channelRule.setWeightMax(sizeDto.getValue());
		channelRule.setWeightUnit("kg");
	}

	/**
	 * 处理 重量
	 *
	 * @param channelRule
	 * @param item
	 */
	private void processWeightMin(ChannelFileDto item, ChannelRule channelRule) {
		String weight = item.getWeight();
		if (StringUtils.isEmpty(weight))
			return;
		SizeDto sizeDto = processSize(weight, PatternBuilder.patternBuilder()
				.include(GREAT)
				.includeGroup(DIGITAL)
				.include(SPACE)
				.includeGroup(WEIGHT_SIZE_UNIT)
				.build());
		channelRule.setWeightMin(sizeDto.getValue());
		channelRule.setWeightUnit("kg");
	}

	/**
	 * 获取匹配值和单位
	 *
	 * @param dimension
	 * @param patternString
	 * @return
	 */
	private SizeDto processSize(String dimension, String patternString) {
		Pattern pattern = Pattern.compile(patternString);
		Matcher matcher = pattern.matcher(dimension);
		SizeDto sizeDto = new SizeDto();
		if (matcher.find()) {
			sizeDto.setValue(new BigDecimal(matcher.group(1)));
			sizeDto.setUnit(SizeUnit.getSizeUnitType(matcher.group(2)));
		}
		return sizeDto;
	}


}
