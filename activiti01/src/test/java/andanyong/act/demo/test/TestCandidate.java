package andanyong.act.demo.test;

import org.activiti.engine.*;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.task.Task;
import org.junit.Test;

import java.util.List;


/**
 * 测试候选人
 */
public class TestCandidate {
    /**
     * 流程部署
     */
    @Test
    public void testDeployment(){
//        1、创建ProcessEngine
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        2、获取RepositoryServcie
        RepositoryService repositoryService = processEngine.getRepositoryService();
//        3、使用service进行流程的部署，定义一个流程的名字，把bpmn和png部署到数据中
        Deployment deploy = repositoryService.createDeployment()
                .name("出差申请流程-Candidate")
                .addClasspathResource("bpmn/evection-candidate.bpmn")
                .deploy();
//        4、输出部署信息
        System.out.println("流程部署id="+deploy.getId());
        System.out.println("流程部署名字="+deploy.getName());
    }

    /**
     * 启动流程 的时候设置流程变量
     */
    @Test
    public void testStartProcess(){
//        获取流程引擎
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        获取RunTimeService
        RuntimeService runtimeService = processEngine.getRuntimeService();
//        流程定义的Key
        String key = "testCandidate";
//        启动流程
        runtimeService.startProcessInstanceByKey(key);
    }

    /**
     * 查询组任务
     */
    @Test
    public void findGroupTaskList(){
        //        流程定义的Key
        String key = "testCandidate";
//        任务候选人
        String candidateUser = "wangwu";
//        获取引擎
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        获取TaskService
        TaskService taskService = processEngine.getTaskService();
//        查询组任务
        List<Task> taskList = taskService.createTaskQuery()
                .processDefinitionKey(key)
                .taskCandidateUser(candidateUser) //根据候选人查询任务
                .list();
        for (Task task : taskList) {
            System.out.println("========================");
            System.out.println("流程实例ID="+task.getProcessInstanceId());
            System.out.println("任务id="+task.getId());
            System.out.println("任务负责人="+task.getAssignee());
        }
    }

    /**
     * 候选人拾取任务
     */
    @Test
    public void claimTask(){
//        获取引擎
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        获取TaskService
        TaskService taskService = processEngine.getTaskService();
//        当前任务的id
        String taskId = "67502";
//        任务候选人
        String candidateUser = "wangwu";
//        查询任务
        Task task = taskService.createTaskQuery()
                .taskId(taskId)
                .taskCandidateUser(candidateUser)
                .singleResult();
        if(task != null){
//            拾取任务
            taskService.claim(taskId,candidateUser);
            System.out.println("taskid-"+taskId+"-用户-"+candidateUser+"-拾取任务完成");
        }
    }

    /**
     * 任务的归还
     */
    @Test
    public void testAssigneeToGroupTask(){
//        获取引擎
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        获取TaskService
        TaskService taskService = processEngine.getTaskService();
//        当前任务的id
        String taskId = "67502";
//        任务负责人
        String assignee = "wangwu";
//        根据key 和负责人来查询任务
        Task task = taskService.createTaskQuery()
                .taskId(taskId)
                .taskAssignee(assignee)
                .singleResult();
        if(task != null){
//            归还任务 ,就是把负责人 设置为空
            taskService.setAssignee(taskId,null);
            System.out.println("taskid-"+taskId+"-归还任务完成");
        }
    }


    /**
     * 任务的交接
     */
    @Test
    public void testAssigneeToCandidateUser(){
//        获取引擎
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        获取TaskService
        TaskService taskService = processEngine.getTaskService();
//        当前任务的id
        String taskId = "67502";
//        任务负责人
        String assignee = "wangwu";
//        任务候选人
        String candidateUser = "lisi";
//        根据key 和负责人来查询任务
        Task task = taskService.createTaskQuery()
                .taskId(taskId)
                .taskAssignee(assignee)
                .singleResult();
        if(task != null){
//            交接任务 ,就是把负责人 设置为空
            taskService.setAssignee(taskId,candidateUser);
            System.out.println("taskid-"+taskId+"-交接任务完成");
        }
    }
    /**
     * 完成个人任务
     */
    @Test
    public void completTask(){
//        流程定义的Key
        String key = "testCandidate";
//        任务负责人
        String assingee = "汤姆";
//        String assingee = "";
        //        获取流程引擎
        ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
//        获取taskservice
        TaskService taskService = processEngine.getTaskService();
//        查询任务
        Task task = taskService.createTaskQuery()
                .processDefinitionKey(key)
                .taskAssignee(assingee)
                .singleResult();
        if(task != null){
            //     根据任务id来   完成任务
            taskService.complete(task.getId());
        }

    }
}
