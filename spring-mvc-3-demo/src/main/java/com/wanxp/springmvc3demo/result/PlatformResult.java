package com.wanxp.springmvc3demo.result;

import com.wanxp.springmvc3demo.constant.Constant;

public class PlatformResult {
    private Integer code;
    private String message;

    public PlatformResult(Integer code) {
        this.code = code;
    }

    public PlatformResult(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public static PlatformResult success() {
        return new PlatformResult(Constant.SUCCESS);
    }

    public static PlatformResult success(String message) {
        return new PlatformResult(Constant.SUCCESS, message);
    }

    public static PlatformResult failure() {
        return new PlatformResult(Constant.FAIL);
    }

    public static PlatformResult failure(String message) {
        return new PlatformResult(Constant.FAIL, message);
    }


    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
