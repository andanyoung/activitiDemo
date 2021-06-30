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
import com.itstyle.bpmn.entity.BpmnModel;
import com.itstyle.bpmn.entity.SysUser;
import com.itstyle.bpmn.service.IBpmnService;

@Service("bpmnService")
public class BpmnServiceImpl implements IBpmnService {

	@Autowired
	private DynamicQuery dynamicQuery;
	
	@Override
	public Result list(Map<String, Object> params, SysUser user) {
		StringBuffer nativeCount = new StringBuffer("SELECT count(*) FROM bpmn_model WHERE user_create=?");
		Long count =  dynamicQuery.nativeQueryCount(nativeCount.toString(),new Object[] {user.getId()});
		List<BpmnModel> bpmnList = new ArrayList<>();
		if(count>0) {
			Integer pageNo = Integer.parseInt(params.get("pageNo").toString());
			Integer pageSize = Integer.parseInt(params.get("pageSize").toString());
			StringBuffer nativeSql = new StringBuffer("SELECT * FROM bpmn_model WHERE user_create=? order by gmt_create");
			Pageable pageable = new PageRequest(pageNo-1,pageSize);
			bpmnList =dynamicQuery.nativeQueryPagingList(BpmnModel.class, pageable, nativeSql.toString(), new Object[] {user.getId()} );
		}
		PageBean<BpmnModel> result = new PageBean<>(bpmnList, count);
		return  CommonUtils.msg(result);
	}

	@Override
	public Result get(Integer id, Integer userId) {
		String nativeSql = "SELECT * FROM bpmn_model WHERE user_create=? AND id=?";
		BpmnModel model = dynamicQuery.nativeQuerySingleResult(BpmnModel.class, nativeSql, new Object[] {userId,id});
		return  CommonUtils.msg(model);
	}

	@Override
	@Transactional
	public Result remove(Integer id, Integer userId) {
		String nativeSql = "DELETE FROM bpmn_model WHERE user_create=? AND id=?";
		int count = dynamicQuery.nativeExecuteUpdate(nativeSql, new Object[] {userId,id});
		return  CommonUtils.msg(count);
	}

}
