package andanyoung.act.service;

import java.util.Map;
 
/**
 * 业务service 的接口 必须实现接口 实现其方法
 */
public interface IActFlowCustomService {
	
	
	/**
	 * 设置流程变量
	 * @param id
	 * @return
	 */
	public Map<String, Object> setvariables(Long id);
	
	
	/**
	 * 整个流程开始时需要执行的任务
	 * @param id
	 */
	public void startRunTask(Long id);
	
	
	/**
	 * 整个流程结束需要执行的任务
	 * @param id
	 */
	public void endRunTask(Long id);
 
 
}