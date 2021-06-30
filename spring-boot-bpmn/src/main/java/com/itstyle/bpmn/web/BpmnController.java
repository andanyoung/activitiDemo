package com.itstyle.bpmn.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itstyle.bpmn.common.config.AbstractController;
import com.itstyle.bpmn.common.entity.Result;
import com.itstyle.bpmn.common.util.DateUtils;
import com.itstyle.bpmn.entity.BpmnModel;
import com.itstyle.bpmn.entity.SysUser;
import com.itstyle.bpmn.repository.BpmnRepository;
import com.itstyle.bpmn.service.IBpmnService;

/**
 *  工作流
 * @author zhipeng.zhang
 */
@RestController
@RequestMapping("/bpmn")
public class BpmnController  extends AbstractController {
	
	@Autowired
	private BpmnRepository bpmnRepository;
	@Autowired
	private IBpmnService bpmnService;
	
	@RequestMapping(value="list")
	public Result list(@RequestBody Map<String, Object> params,HttpServletRequest request) {
		SysUser user =  this.getUser(request);
		return bpmnService.list(params, user);
    }
	
	@RequestMapping(value="save")
	public Result save(BpmnModel bpmn,HttpServletRequest request) {
		SysUser user =  this.getUser(request);
		bpmn.setUserCreate(user.getId());
		bpmn.setUsername(user.getUsername());
		bpmn.setGmtCreate(DateUtils.getTimestamp());
		bpmn.setGmtUpdate(DateUtils.getTimestamp());
		bpmn.setModelKey(bpmn.getModelName());
		bpmnRepository.saveAndFlush(bpmn);
		return Result.ok(bpmn.getId());
    }
	
	@RequestMapping(value="get")
	public Result get(Integer id,HttpServletRequest request){
		SysUser user =  this.getUser(request);
		return  bpmnService.get(id, user.getId());
    }
	@RequestMapping(value="remove")
	public Result remove(Integer id,HttpServletRequest request){
		SysUser user =  this.getUser(request);
		return  bpmnService.remove(id, user.getId());
    }
	
//	@RequestMapping(value="download")
//	public void download(HttpServletResponse response,HttpServletRequest request){
//		try {
//			String id = request.getParameter("id");
//			BpmnModel bpmn = bpmnRepository.getOne(Integer.parseInt(id));
//			InputStream is = new ByteArrayInputStream(bpmn.getBpmnXml().getBytes());
//			ServletOutputStream output = response.getOutputStream();
//			IOUtils.copy(is, output);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//    }
}
