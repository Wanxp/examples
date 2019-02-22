package com.wanxp.thymeleafdemo.servlet;

import com.wanxp.thymeleafdemo.context.WebApplicationContext;
import com.wanxp.thymeleafdemo.controller.IGTVController;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ThymeleafServlet extends HttpServlet {
    private WebApplicationContext application;
    private ServletContext context;

    @Override
    public void init() {
        this.application = (WebApplicationContext) getServletContext().getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        super.service(request,response);
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        doService(request, response);
    }

    private void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            //避免对css/images/favicon类型的解析
            if (request.getRequestURI().startsWith("/css") || request.getRequestURI().startsWith("/images")
                    || request.getRequestURI().startsWith("/favicon"))
                return;
            response.setContentType("text/html;charset=UTF-8");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);

            doDispatch(request, response);

        }catch (Exception e) {

        }
    }

    private void doDispatch(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        IGTVController controller = getController(request);
        try {
            controller.process(request, response, getServletContext(), this.application.getTemplateEngine());
        } catch (IOException e) {
            throw new ServletException("No adapter for uri [" + request.getRequestURI() +"]: The DispatcherServlet configuration needs to include a HandlerAdapter that supports this handler");
        }finally {
            System.out.println(response.getStatus());
        }
    }

    private IGTVController getController(final HttpServletRequest request) throws ServletException {
        try {
            return this.application.getHandlerMap().entrySet().stream().filter(x -> {
                return x.getKey().equals(request.getRequestURI());
            }).findFirst().get().getValue();
        } catch (Exception e) {
            throw new ServletException("No adapter for uri [" + request.getRequestURI() +"]: The DispatcherServlet configuration needs to include a HandlerAdapter that supports this handler");
        }

    }
}
