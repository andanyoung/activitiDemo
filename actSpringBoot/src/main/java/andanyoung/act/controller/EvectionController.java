package andanyoung.act.controller;

import andanyoung.act.entity.Evection;
import andanyoung.act.service.ActFlowCommService;
import andanyoung.act.service.EvectionService;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.runtime.ProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Slf4j
@RestController
public class EvectionController {
    @Autowired
    private EvectionService evectionService;
    /**
     * 查询本人的出差申请
     * @param request
     * @return
     */
    @GetMapping("/evection/findAll")
    public List<Evection> findAll(HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userid");
        return evectionService.findList(userId);
    }

    @GetMapping("/evection/{id}")
    public Evection findAll(HttpServletRequest request, @PathVariable(name = "id")Long evectionId){
        Long userId = (Long)request.getSession().getAttribute("userid");
        return evectionService.findOne(evectionId);
    }

    @Autowired
    private ActFlowCommService actFlowCommService;
    /**
     * 新增出差申请
     * @param request
     * @param evection
     */
    @PostMapping("/evection/add")
    public void addEvection(HttpServletRequest request,@RequestBody  Evection evection){
        Long userId = (Long)request.getSession().getAttribute("userid");
        evection.setUserid(userId);
        evection.setState(0);
        int code = evectionService.addEvection(evection);
        if(code ==1){
            Long id = evection.getId();
            String formKey = "evection";
            String beanName = formKey + "Service";
            //使用流程变量设置字符串（格式 ： Evection:Id 的形式）
            //使用正在执行对象表中的一个字段BUSINESS_KEY(Activiti提供的一个字段)，让启动的流程（流程实例）关联业务
            String bussinessKey = formKey+":" +id;
            ProcessInstance processInstance = actFlowCommService.startProcess(formKey, beanName, bussinessKey, id);
            //		流程实例ID
            String processDefinitionId = processInstance.getProcessDefinitionId();
            log.info("processDefinitionId is {}",processDefinitionId);
            List<Map<String, Object>> taskList = actFlowCommService.myTaskList(userId.toString());
            if(!CollectionUtils.isEmpty(taskList)){
                for (Map<String, Object> map : taskList) {
                    if(map.get("assignee").toString().equals(userId.toString()) &&
                            map.get("processDefinitionId").toString().equals(processDefinitionId)){
                        log.info("processDefinitionId is {}",map.get("processDefinitionId").toString());
                        log.info("taskid is {}",map.get("taskid").toString());
                        actFlowCommService.completeProcess("同意",map.get("taskid").toString(),userId.toString());
                    }

                }
            }
        }
    }

}
