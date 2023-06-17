package com.cuppacorner.framework.config;

import com.cuppacorner.android.utils.JwtUtils;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

@Component
public class JwtTokenFilter extends OncePerRequestFilter {

    @Autowired
    private JwtUtils jwtUtils;


    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
        throws ServletException, IOException {
        String requestUri = request.getRequestURI();
        if (requestUri != null && (requestUri.startsWith("/androidapi/send") || requestUri.startsWith("/androidapi/verify"))) {
            filterChain.doFilter(request, response); // 如果请求的URI以/send或/verify开头，则直接传递请求
            return;
        }
        if (requestUri != null && requestUri.startsWith("/androidapi/")) {
            String header = request.getHeader("Authorization");
            if (header != null && header.startsWith("Bearer ")) {
                String token = header.substring(7);
                if (jwtUtils.validateToken(token)) {
                    // 令牌验证成功，将请求传递给下一个过滤器或处理程序
                    filterChain.doFilter(request, response);
                    return;
                }
            }
            // 令牌验证失败，返回HTTP 401 Unauthorized响应
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        } else {
            // 如果请求URL不是/androidapi/，则直接传递请求
            filterChain.doFilter(request, response);
        }
    }
}
