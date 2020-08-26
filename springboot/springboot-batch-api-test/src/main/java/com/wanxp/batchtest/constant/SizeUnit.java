package com.wanxp.batchtest.constant;

public enum SizeUnit {
	MM("mm", "毫米", "mm"),
	CM("cm", "厘米", "cm"),
	M("m", "米", "m"),
	M3("m^3", "立方米", "m³");
	private String type;
	private String cnName;
	private String mathName;

	SizeUnit(String type, String cnName, String mathName) {
		this.type = type;
		this.cnName = cnName;
		this.mathName = mathName;
	}

	public static SizeUnit getSizeUnit(String name) {
		for (SizeUnit sizeUnit : values()) {
			if (sizeUnit.getCnName().equals(name)
					|| sizeUnit.getType().equalsIgnoreCase(name)
					|| sizeUnit.getMathName().equalsIgnoreCase(name))
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

	public String getMathName() {
		return mathName;
	}
}
