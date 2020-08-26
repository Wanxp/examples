package com.wanxp.jiraexport.exporttomail.dto;

public interface Result {
	public static final int PLATFORM_RESULT_SUCCESS_CODE = 0;
	public static final int PLATFORM_RESULT_FAILED_CODE = 9999;
	public static final String PLATFORM_RESULT_SUCCESS_MESSAGE = "success";
	public static final String PLATFORM_RESULT_FAILED_MESSAGE = "failed";

	int getCode();

	String getMsg();

	Object getData();
}
