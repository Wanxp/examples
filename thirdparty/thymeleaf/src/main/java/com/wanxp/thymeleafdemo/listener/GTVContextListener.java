package com.wanxp.thymeleafdemo.listener;

import com.wanxp.thymeleafdemo.context.ContextLoader;
import com.wanxp.thymeleafdemo.context.WebApplicationContext;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class GTVContextListener extends ContextLoader implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        super.initWebApplicationContext(servletContextEvent.getServletContext());
    }


    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
