package com.example.controller;


import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(urlPatterns = {"/welcome"})
public class AuthenticationFilter implements Filter{

    public void init(FilterConfig arg0) throws ServletException {}

    public void doFilter(ServletRequest req, ServletResponse resp,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest servletRequest = (HttpServletRequest) req;
        if(servletRequest.getSession() == null || servletRequest.getSession().getAttribute("userName") == null){
            req.setAttribute("msg","Please Login to continue");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
            return;
        }else {
            chain.doFilter(req, resp);
        }

    }
    public void destroy() {}
}
