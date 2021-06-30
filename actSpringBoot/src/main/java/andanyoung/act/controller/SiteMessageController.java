package andanyoung.act.controller;

import andanyoung.act.entity.SiteMessage;
import andanyoung.act.service.SiteMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class SiteMessageController {

    @Autowired
    private SiteMessageService siteMessageService;

    /**
     * 查询所有站内消息
     * @return
     */
    @GetMapping("/msg/findAll")
    public List<SiteMessage> findAll(HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userid");
        return siteMessageService.findAll(userId);
    }

    @GetMapping("/msg/findOne/{id}")
    public SiteMessage findOne(@PathVariable(name = "id")Long id,
                               HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userid");
        return siteMessageService.findOne(id,userId);
    }

    /**
     * 修改消息
     * @param id
     */
    @PutMapping("/msg/{id}")
    public void readMsg(@PathVariable(name = "id")Long id,HttpServletRequest request){
        Long userId = (Long)request.getSession().getAttribute("userid");
        siteMessageService.readMsg(id,userId);
    }
}
