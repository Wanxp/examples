package com.wanxp.thymeleafdemo.controller;

import org.thymeleaf.ITemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;

public class HomeController implements IGTVController{
    public void process(HttpServletRequest request, HttpServletResponse responce, ServletContext servletContext, ITemplateEngine templateEngine) throws IOException {
        WebContext context = new WebContext(request, responce, servletContext, request.getLocale());
        context.setVariable("today", Calendar.getInstance());
        templateEngine.process("home", context, responce.getWriter());
    }
}
