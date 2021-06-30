package andanyoung.act.service;

import andanyoung.act.mapper.SiteMessageMapper;
import andanyoung.act.entity.SiteMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SiteMessageService {

    @Autowired
    private SiteMessageMapper siteMessageMapper;

    public List<SiteMessage> findAll(Long userId) {
        return siteMessageMapper.selectMsgList(userId);
    }

    public SiteMessage findOne(Long id,Long userId) {
        return siteMessageMapper.selectOneMsg(id,userId);
    }

    public int readMsg(Long id,Long userId) {
        return siteMessageMapper.updateMsgRead(id,userId);
    }

    public int sendMsg(Long userId, String taskId,Integer type,Integer isread) {
        return siteMessageMapper.insertMsg(userId,taskId,type,isread);
    }
}
