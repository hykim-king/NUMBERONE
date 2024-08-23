package com.pcwk.ehr.cors;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SimpleCORSFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
            throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        httpResponse.setHeader("Access-Control-Allow-Origin", "*"); // 모든 출처 허용
        httpResponse.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS"); // 허용할 메서드
        httpResponse.setHeader("Access-Control-Allow-Headers", "*"); // 모든 헤더 허용
        httpResponse.setHeader("Access-Control-Allow-Credentials", "true"); // 쿠키 및 인증 정보 허용
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {}
}

