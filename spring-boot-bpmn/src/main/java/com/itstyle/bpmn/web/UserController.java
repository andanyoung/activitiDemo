package com.itstyle.bpmn.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itstyle.bpmn.common.config.AbstractController;
import com.itstyle.bpmn.common.entity.Result;
import com.itstyle.bpmn.common.util.CommonUtils;
import com.itstyle.bpmn.common.util.DateUtils;
import com.itstyle.bpmn.common.util.MD5Utils;
import com.itstyle.bpmn.entity.SysUser;
import com.itstyle.bpmn.repository.UserRepository;
import com.itstyle.bpmn.service.IUserService;

/**
 * 用户管理
 * @author zhipeng.zhang
 */
@RestController
@RequestMapping("/user")
public class UserController  extends AbstractController {
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="list")
	public Result list(@RequestBody Map<String, Object> params,HttpServletRequest request) {
		SysUser user =  this.getUser(request);
		return userService.list(params, user);
    }
	
	@RequestMapping(value="save")
	public Result save(SysUser user,HttpServletRequest request) {
		String password = MD5Utils.getSaltMD5(user.getPassword());
		user.setPassword(password);
		user.setGmtUpdate(DateUtils.getTimestamp());
		user.setGmtCreate(DateUtils.getTimestamp());
		user.setUserCreate(this.getUserId(request));	
		if(user.getRoleCode().equals("user")) {
			user.setRoleName("普通用户");
		}else {
			user.setRoleName("管理员");
		}
		userRepository.saveAndFlush(user);
		return Result.ok();
    }
	@RequestMapping(value="edit")
	public Result edit(SysUser user,HttpServletRequest request) {
		user.setGmtUpdate(DateUtils.getTimestamp());
		if(user.getRoleCode().equals("user")) {
			user.setRoleName("普通用户");
		}else {
			user.setRoleName("管理员");
		}
		userRepository.saveAndFlush(user);
		return Result.ok();
    }
	@RequestMapping(value="get")
	public Result get(Integer id,HttpServletRequest request){
		SysUser user =   userRepository.getOne(id);
		return CommonUtils.msg(user);
    }
	@RequestMapping(value="remove")
	public Result remove(Integer id,HttpServletRequest request){
		SysUser user =   userRepository.getOne(id);
		if(!user.getRoleCode().equals("admin")) {
			userRepository.delete(id);
		}
		return Result.ok();
    }
	@RequestMapping(value="reset")
	public Result reset(SysUser user,HttpServletRequest request){
		return userService.reset(user);
    }
}
