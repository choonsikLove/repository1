package com.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MwAuthInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		    throws Exception {
		
		HttpSession session = request.getSession();
		String memail = (String)session.getAttribute("memail");
		
		if(memail == null) {
			response.sendRedirect("http://localhost:9000/manwol/index");
			return false;
		}
		
		return true;
	}
	
}
