package com.wanxp.jiraexport.exporttomail.dto;

import lombok.Data;

@Data
public class PlatformResult implements Result {
    private int code;
    private String msg;
    private Object data;

    public PlatformResult() {
        this(null);
    }

    public PlatformResult(Object data) {
        this(PLATFORM_RESULT_SUCCESS_MESSAGE, data);
    }

    public PlatformResult(String msg, Object data) {
        this(PLATFORM_RESULT_SUCCESS_CODE, msg, data);
    }

    public PlatformResult(int code, Object data) {
        this(code, PLATFORM_RESULT_SUCCESS_MESSAGE, data);
    }

    public PlatformResult(int code, String msg) {
        this(code, msg, null);
    }

    public PlatformResult(int code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public static PlatformResult success() {
        return new PlatformResult();
    }

    public static PlatformResult success(Object data) {
        return new PlatformResult(data);
    }

    public static PlatformResult success(String message, Object data) {
        return new PlatformResult(message, data);
    }


    public static PlatformResult fail() {
        return new PlatformResult(PLATFORM_RESULT_FAILED_CODE, PLATFORM_RESULT_FAILED_MESSAGE, null);
    }

    public static PlatformResult fail(Object data) {
        return new PlatformResult(PLATFORM_RESULT_FAILED_CODE, PLATFORM_RESULT_FAILED_MESSAGE, data);
    }

    public static PlatformResult fail(String msg) {
        return new PlatformResult(PLATFORM_RESULT_FAILED_CODE, msg);
    }

    public static PlatformResult fail(int code) {
        return new PlatformResult(code, PLATFORM_RESULT_FAILED_MESSAGE);
    }

    public static PlatformResult fail(int code, String msg) {
        return new PlatformResult(code, msg);
    }

    public static PlatformResult fail(int code, String msg, Object data) {
        return new PlatformResult(code, msg, data);
    }

}
