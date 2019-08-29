package com.wanxp.springmvc3demo.interceptor;

import com.wanxp.springmvc3demo.result.PlatformResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class MyControllerAdviceHandler {

    @ExceptionHandler
    @ResponseBody
    public PlatformResult handle(Exception e) {
        System.out.println("enter controller advice handler");
        return PlatformResult.failure("exception");
    }
}
