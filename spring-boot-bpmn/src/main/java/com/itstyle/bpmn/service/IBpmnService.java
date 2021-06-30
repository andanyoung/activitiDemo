package com.itstyle.bpmn.service;

import java.util.Map;

import com.itstyle.bpmn.common.entity.Result;
import com.itstyle.bpmn.entity.SysUser;

public interface IBpmnService {
	 Result list(Map<String, Object> params,SysUser user);
	 
	 Result get(Integer id,Integer userId);
	 
	 Result remove(Integer id,Integer userId);
}
