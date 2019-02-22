package com.wanxp.thymeleafdemo.context;

import javax.servlet.ServletContext;

/**
 * 根上下文加载器
 */
public class ContextLoader {
    private static volatile WebApplicationContext context;

    public WebApplicationContext initWebApplicationContext(ServletContext servletContext) {
        try {
            if (this.context == null) {
                this.context = createWebAppliationContext(servletContext);
            }
            servletContext.setAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE, context);
        }catch (Exception e) {
            servletContext.setAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE, e);
        }
        return this.context;
    }

    private WebApplicationContext createWebAppliationContext(ServletContext servletContext) {
        WebApplicationContext webAppliationContext = new WebApplicationContext(servletContext);
        return webAppliationContext;
    }
}
