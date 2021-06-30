package com.itstyle.bpmn.service;

import java.util.Map;

import com.itstyle.bpmn.common.entity.Result;
import com.itstyle.bpmn.entity.SysUser;

public interface IUserService {
     SysUser getUser(String userName);
     
     Result list(Map<String, Object> params,SysUser user);
     
     Result reset(SysUser user);
}
