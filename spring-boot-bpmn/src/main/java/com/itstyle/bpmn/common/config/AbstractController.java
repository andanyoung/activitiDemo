package com.itstyle.bpmn.common.config;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.itstyle.bpmn.entity.SysUser;
/**
 * Controller公共组件
 * 创建者 张志朋
 * 创建时间	2017年11月20日
 *
 */
public abstract class AbstractController {
	
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	
	protected SysUser getUser(HttpServletRequest request) {
		return (SysUser) request.getSession().getAttribute("user");
	}
	
	protected Integer getUserId(HttpServletRequest request) {
		SysUser user =  (SysUser) request.getSession().getAttribute("user");
		return user.getId();
	}

}
