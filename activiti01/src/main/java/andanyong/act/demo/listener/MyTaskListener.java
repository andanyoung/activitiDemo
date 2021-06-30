package andanyong.act.demo.listener;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

/**
 * 监听器
 */
public class MyTaskListener implements TaskListener {
    /**
     * 指定负责人
     * @param delegateTask
     */
    @Override
    public void notify(DelegateTask delegateTask) {
//        判断当前的任务 是 创建申请 并且  是 create事件
        if("创建申请".equals(delegateTask.getName()) &&
            "create".equals(delegateTask.getEventName())){
            delegateTask.setAssignee("张三");
        }

    }
}
