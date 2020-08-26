package com.wanxp.batch.excel.constant;

import com.wanxp.batch.excel.util.StringUtils;

import java.math.BigDecimal;
import java.util.List;

public class Constant {

	public static final String[] COLUMNS =
			new String[]{"field", "fieldName", "description", "type", "maxLength", "required", "remark", "example"};

	public enum DataBaseJavaType {
		VARCHAR("VARCHAR", String.class, "String"),
		DECIMAL("DECIMAL", BigDecimal.class, "BigDecimal"),
		LIST("LIST", List.class, "List"),
		INTEGER("INTEGER", Integer.class, "Integer");
		private String databaseTypeName;
		private Class type;
		private String javaTypeName;

		DataBaseJavaType(String databaseTypeName, Class type, String javaTypeName) {
			this.javaTypeName = javaTypeName;
			this.type = type;
			this.databaseTypeName = databaseTypeName;
		}

		public static DataBaseJavaType getByTypeName(String typeName) {
			if (StringUtils.isEmpty(typeName))
				return null;
			for (DataBaseJavaType d : values()) {
				if (d.getDatabaseTypeName().equalsIgnoreCase(typeName) || d.getJavaTypeName().equalsIgnoreCase(typeName))
					return d;
			}
			return null;
		}

		public String getDatabaseTypeName() {
			return databaseTypeName;
		}

		public Class getType() {
			return type;
		}

		public String getJavaTypeName() {
			return javaTypeName;
		}
	}
}
