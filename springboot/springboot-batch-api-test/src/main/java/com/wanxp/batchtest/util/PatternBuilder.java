package com.wanxp.batchtest.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PatternBuilder {
    private static final String INCLUDE_LABEL_LEFT = "(";
    private static final String INCLUDE_LABEL_RIGHT = ")";
    private StringBuilder stringBuilder;

    PatternBuilder(String pattern) {
        this.stringBuilder = new StringBuilder(pattern);
    }

    PatternBuilder() {
        this.stringBuilder = new StringBuilder();
    }

    public static PatternBuilder patternBuilder(String pattern) {
        return new PatternBuilder(pattern);
    }

    public static PatternBuilder patternBuilder() {
        return new PatternBuilder();
    }

    public PatternBuilder includeGroup(String group) {
        stringBuilder.append(INCLUDE_LABEL_LEFT).append(group).append(INCLUDE_LABEL_RIGHT);
        return this;
    }

    public PatternBuilder include(String pattern) {
        stringBuilder.append(pattern);
        return this;
    }

    public String build() {
        return stringBuilder.toString();
    }


    /**
     * 获取匹配所有值
     *
     * @param patternValue
     * @return
     */
    public List<String> allTouchList(String patternValue) {
        Pattern pattern = Pattern.compile(this.stringBuilder.toString());
        Matcher matcher = pattern.matcher(patternValue);
        List<String> result = new ArrayList<>();
        if (matcher.find()) {
            for (int i = 1; i < matcher.groupCount(); i++) {
                result.add(matcher.group(i));
            }
        }
        return result;
    }

}
