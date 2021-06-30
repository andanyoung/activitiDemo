package com.itstyle.bpmn.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itstyle.bpmn.common.dynamicquery.DynamicQuery;
import com.itstyle.bpmn.common.entity.PageBean;
import com.itstyle.bpmn.common.entity.Result;
import com.itstyle.bpmn.common.util.CommonUtils;
import com.itstyle.bpmn.common.util.MD5Utils;
import com.itstyle.bpmn.entity.SysUser;
import com.itstyle.bpmn.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Autowired
	private DynamicQuery dynamicQuery;

	@Override
	public SysUser getUser(String userName) {
		String nativeSql = "SELECT * FROM sys_user u WHERE username=?";
		return  dynamicQuery.nativeQuerySingleResult(SysUser.class,nativeSql,new Object[] {userName});
	}

	@Override
	public Result list(Map<String, Object> params,SysUser user) {
		StringBuffer nativeCount = new StringBuffer("SELECT count(*) FROM sys_user WHERE user_create=?");
		Long count =  dynamicQuery.nativeQueryCount(nativeCount.toString(),new Object[] {user.getId()});
		List<SysUser> userList = new ArrayList<>();
		if(count>0) {
			Integer pageNo = Integer.parseInt(params.get("pageNo").toString());
			Integer pageSize = Integer.parseInt(params.get("pageSize").toString());
			StringBuffer nativeSql = new StringBuffer("SELECT * FROM sys_user WHERE user_create=?");
			Pageable pageable = new PageRequest(pageNo-1,pageSize);
			userList =dynamicQuery.nativeQueryPagingList(SysUser.class, pageable, nativeSql.toString(), new Object[] {user.getId()} );
		}
		PageBean<SysUser> result = new PageBean<>(userList, count);
		return  CommonUtils.msg(result);
	}

	@Override
	@Transactional
	public Result reset(SysUser user) {
		String nativeSql = "UPDATE  sys_user  SET password =? WHERE id=?";
		String password = MD5Utils.getSaltMD5(user.getPassword());
		int count = dynamicQuery.nativeExecuteUpdate(nativeSql, new Object[] {password,user.getId()});
		return  CommonUtils.msg(count);
	}
}
