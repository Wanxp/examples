package com.wanxp.batchtest.constant;

public enum SizeUnit {
    CM("cm", "厘米"),
    M("m", "米"),
    M3("m^3", "立方米");
    private String type;
    private String cnName;

    SizeUnit(String type, String cnName) {
        this.type = type;
        this.cnName = cnName;
    }

    public static SizeUnit getSizeUnit(String name) {
        for (SizeUnit sizeUnit : values()) {
            if (sizeUnit.getCnName().equals(name) || sizeUnit.getType().equalsIgnoreCase(name))
                return sizeUnit;
        }
        return null;
    }

    public static String getSizeUnitType(String name) {
        SizeUnit sizeUnit = getSizeUnit(name);
        if (sizeUnit == null)
            return "";
        return sizeUnit.getType();
    }

    public String getType() {
        return type;
    }

    public String getCnName() {
        return cnName;
    }
}
