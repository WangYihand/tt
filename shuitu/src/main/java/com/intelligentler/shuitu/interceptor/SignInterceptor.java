package com.intelligentler.shuitu.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.intelligentler.shuitu.entity.Admin;
import com.intelligentler.shuitu.service.AdminService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登陆拦截器 
 * @author ming.zhou
 *
 */
public class SignInterceptor extends HandlerInterceptorAdapter {
	
	
//	private static final Logger logger=LoggerFactory.getLogger(SignInterceptor.class);

	@Autowired
    private AdminService adminService;

	@Override
	// 实现用户访问页面时的登录验证功能
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		Admin admin = adminService.getAdminRedis(request.getRequestedSessionId());
		System.out.println("sessionId is " + request.getRequestedSessionId() 
							+ " and admin is " + (admin==null?"null":"exits"));
    	if(null == admin){//用户没有登录
    		response.sendRedirect(request.getContextPath()+"/");
        	return false;
        }
    	
    	return true;
	}
}
