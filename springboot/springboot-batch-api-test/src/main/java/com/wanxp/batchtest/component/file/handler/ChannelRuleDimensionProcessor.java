package com.wanxp.batchtest.component.file.handler;

import com.wanxp.batchtest.constant.SizeUnit;
import com.wanxp.batchtest.model.dto.ChannelFileDto;
import com.wanxp.batchtest.model.dto.SizeDto;
import com.wanxp.batchtest.model.entity.primary.ChannelRule;
import com.wanxp.batchtest.util.PatternBuilder;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class ChannelRuleDimensionProcessor implements ChannelPropertyProcessor {



    public static final Set<String> LENGTH_MIN_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("最小尺寸：").includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder("长×宽×高 = ").includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build()

    ));
    public static final Set<String> LENGTH_MAX_PATTERN = new HashSet<>(Arrays.asList(PatternBuilder
                    .patternBuilder("^长").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder("长×宽×高 = ").includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder(SMALL).includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build()
    ));


    public static final Set<String> WIDTH_MIN_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("最小尺寸：").include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
        .includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder("长×宽×高 = ").include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build()

    ));

    public static final Set<String> WIDTH_MAX_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("长×宽×高 = ").include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder(SMALL).include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).include(SPACE).include("x").include(SPACE).include(DIGITAL).include(SPACE).include(SIZE_UNIT).build()

    ));



    public static final Set<String> HEIGHT_MIN_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("最小尺寸：").include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder("长×宽×高 = ").include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).build()

    ));

    public static final Set<String> HEIGHT_MAX_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("长×宽×高 = ").include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder(SMALL).include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE)
                    .include(DIGITAL).include(SPACE).include(SIZE_UNIT).include(SPACE).include("x").include(SPACE).includeGroup(DIGITAL).include(SPACE).includeGroup(SIZE_UNIT).build()

    ));





    public static final Set<String> GIRTH_MAX_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("最大围长 \\(宽\\+高）×2 ").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build()
    ));
    public static final Set<String> VOLUME_MAX_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("体积").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build()
    ));
    public static final Set<String> LWH_MAX_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("长\\+宽\\+高").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build()
    ));
    public static final Set<String> L_MIN_S_MAX_PATTERN = new HashSet<>(Arrays.asList(
            PatternBuilder.patternBuilder("长\\+最小面周长").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build()));
    public static final Set<String> LONG_MAX_PATTERN = new HashSet<>(Arrays.asList(PatternBuilder.patternBuilder("最长单边").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build(),
             PatternBuilder.patternBuilder("单边长").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build(),
            PatternBuilder.patternBuilder("最长边").include(SMALL).includeGroup(DIGITAL).includeGroup(SIZE_UNIT).build()
    ));

    static {
        LENGTH_MAX_PATTERN.addAll(LONG_MAX_PATTERN);
        WIDTH_MAX_PATTERN.addAll(LONG_MAX_PATTERN);
        HEIGHT_MAX_PATTERN.addAll(LONG_MAX_PATTERN);
    }

    public ChannelRule process(ChannelFileDto item, ChannelRule channelRule) throws Exception {
        processDimension(item, channelRule);
        return channelRule;
    }

    /**
     * 处理尺寸
     *
     * @param channelRule
     * @param item
     */
    private void processDimension(ChannelFileDto item, ChannelRule channelRule) {
        String dimension = item.getDimension();
        if (StringUtils.isEmpty(dimension))
            return;
        //length_max
        processLengthMax(dimension, channelRule);
        //length_min
        processLengthMin(dimension, channelRule);

        //width_max
        processWidthMax(dimension, channelRule);

        //width_min
        processWidthMin(dimension, channelRule);

        //height_max
        processHeightMax(dimension, channelRule);

        //height_min
        processHeightMin(dimension, channelRule);

        //girth_max
        processGirthMax(dimension, channelRule);

        //girth_min
        //lwh_max
        processLWHMax(dimension, channelRule);
        //lwh_min

        //lMinS_max
        processLMinSMax(dimension, channelRule);

        //lMinS_min

        //volume_max
        processVolumeMax(dimension, channelRule);

        //volume_min


    }

    /**
     * 获取 长 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processLengthMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, LENGTH_MAX_PATTERN);
        channelRule.setLengthMax(sizeDto.getValue());
        channelRule.setLengthUnit(sizeDto.getUnit());
        return channelRule;
    }

    /**
     * 获取 长 最小值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processLengthMin(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, LENGTH_MIN_PATTERN);
        channelRule.setLengthMin(sizeDto.getValue());
        channelRule.setLengthUnit(StringUtils.isEmpty(channelRule.getLengthUnit()) ? sizeDto.getUnit() : channelRule.getLengthUnit());
        return channelRule;
    }

    /**
     * 获取 宽 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processWidthMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, WIDTH_MAX_PATTERN);
        channelRule.setWidthMax(sizeDto.getValue());
        channelRule.setWidthUnit(sizeDto.getUnit());
        return channelRule;
    }

    /**
     * 获取 宽 最小值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processWidthMin(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, WIDTH_MIN_PATTERN);
        channelRule.setWidthMin(sizeDto.getValue());
        channelRule.setWidthUnit(StringUtils.isEmpty(channelRule.getWidthUnit()) ? sizeDto.getUnit() : channelRule.getWidthUnit());
        return channelRule;
    }

    /**
     * 获取 高 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processHeightMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, HEIGHT_MAX_PATTERN);
        channelRule.setHeightMax(sizeDto.getValue());
        channelRule.setHeightUnit(sizeDto.getUnit());
        return channelRule;
    }

    /**
     * 获取 长 最小值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processHeightMin(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, HEIGHT_MIN_PATTERN);
        channelRule.setHeightMin(sizeDto.getValue());
        channelRule.setHeightUnit(StringUtils.isEmpty(channelRule.getHeightUnit()) ? sizeDto.getUnit() : channelRule.getHeightUnit());
        return channelRule;
    }

    /**
     * 获取 长+宽+高 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processLWHMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, LWH_MAX_PATTERN);
        channelRule.setLwhMax(sizeDto.getValue());
        channelRule.setLwhUnit(sizeDto.getUnit());
        return channelRule;
    }

    /**
     * 获取 (宽+高) * 2 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processGirthMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, GIRTH_MAX_PATTERN);
        channelRule.setGirthMax(sizeDto.getValue());
        channelRule.setGirthUnit(sizeDto.getUnit());
        return channelRule;
    }

    /**
     * 获取 长 + (最小面周长) 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processLMinSMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, L_MIN_S_MAX_PATTERN);
        channelRule.setLMinSMax(sizeDto.getValue());
        channelRule.setLMinSUnit(sizeDto.getUnit());
        return channelRule;
    }

    /**
     * 获取 体积 最大值
     *
     * @param dimension
     * @return
     */
    private ChannelRule processVolumeMax(String dimension, ChannelRule channelRule) {
        SizeDto sizeDto = processSize(dimension, VOLUME_MAX_PATTERN);
        channelRule.setVolumeMax(sizeDto.getValue());
        channelRule.setVolumeUnit(sizeDto.getUnit());
        return channelRule;
    }

    private SizeDto processSize(String dimension, Set<String> patternStringSet) {
        return patternStringSet.stream().map(x -> {
            return processSize(dimension, x);
        }).filter(s -> {
            return s.getValue() != null && BigDecimal.ZERO.compareTo(s.getValue()) < 0;
        })
                .findFirst()
                .orElse(new SizeDto());
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
