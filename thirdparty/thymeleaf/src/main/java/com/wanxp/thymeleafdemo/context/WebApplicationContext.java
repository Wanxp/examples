package com.wanxp.thymeleafdemo.context;

import com.wanxp.thymeleafdemo.controller.*;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.Map;

public class WebApplicationContext {
    public static final String ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE = WebApplicationContext.class.getName() + ".ROOT";
    private TemplateEngine templateEngine;
    private Map<String, IGTVController> handlerMap;
    public WebApplicationContext(final ServletContext servletContext) {
        super();
        ServletContextTemplateResolver templateResolver = new ServletContextTemplateResolver(servletContext);
        templateResolver.setTemplateMode(TemplateMode.HTML);
        templateResolver.setPrefix("/WEB-INF/templates/");
        templateResolver.setSuffix(".html");
        templateResolver.setCacheTTLMs(Long.valueOf(3600000L));
        templateResolver.setCacheable(true);
        this.templateEngine = new TemplateEngine();
        this.templateEngine.setTemplateResolver(templateResolver);
        this.handlerMap = new HashMap<String, IGTVController>();
        this.handlerMap.put("/", new HomeController());
        this.handlerMap.put("/product/list", new ProductListController());
        this.handlerMap.put("/product/comments", new ProductCommentsController());
        this.handlerMap.put("/order/list", new OrderListController());
        this.handlerMap.put("/order/details", new OrderDetailsController());
        this.handlerMap.put("/subscribe", new SubscribeController());
        this.handlerMap.put("/userprofile", new UserProfileController());
    }

    public TemplateEngine getTemplateEngine() {
        return templateEngine;
    }

    public Map<String, IGTVController> getHandlerMap() {
        return handlerMap;
    }
}
