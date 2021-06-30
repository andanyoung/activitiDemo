package com.itstyle.bpmn.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.itstyle.bpmn.common.config.AbstractController;
import com.itstyle.bpmn.common.entity.Result;
import com.itstyle.bpmn.common.util.MD5Utils;
import com.itstyle.bpmn.entity.SysUser;
import com.itstyle.bpmn.service.IUserService;

/**
 * @用户登录
 * @author zhipeng.zhang
 */
@RestController
@RequestMapping("/")
public class LoginController  extends AbstractController {
	@Autowired
    private IUserService userService;
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public Result login(String username,String password,HttpServletRequest request) {
		SysUser user = userService.getUser(username);
		if(user==null) {
			return Result.error("用户不存在");
		}else {
			if(MD5Utils.getSaltverifyMD5(password, user.getPassword())) {
				request.getSession().setAttribute("user", user);
				return Result.ok();
			}else {
				return Result.error("密码错误");
			}
		}
    }
	@RequestMapping(value="getUser")
	public SysUser getUser(HttpServletRequest request){
		SysUser user =  (SysUser) request.getSession().getAttribute("user");
		return user;
    }
	@RequestMapping(value="logout")
	public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.getSession().invalidate();
		response.sendRedirect("login.shtml");
    }
}
