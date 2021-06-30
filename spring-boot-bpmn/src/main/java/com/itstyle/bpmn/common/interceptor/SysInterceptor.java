package com.itstyle.bpmn.common.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.itstyle.bpmn.entity.SysUser;
/**
 * 日志(认证)拦截器
 * 创建者 张志朋
 * 创建时间	2017年9月26日
 */
public class SysInterceptor  implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		if (handler instanceof HandlerMethod){
			SysUser user =  (SysUser) request.getSession().getAttribute("user");
			if(user==null){
				response.sendRedirect("/");
				return false;
			}else{
				return true;
			}
		}else{
			return true;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) throws Exception {
		
	}

}
