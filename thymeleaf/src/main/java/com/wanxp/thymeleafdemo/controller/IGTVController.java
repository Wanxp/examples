package com.wanxp.thymeleafdemo.controller;

import org.thymeleaf.ITemplateEngine;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface IGTVController {
    public void process(HttpServletRequest request, HttpServletResponse responce, ServletContext servletContext, ITemplateEngine templateEngine) throws IOException;
}
