package andanyoung.act.entity;

import lombok.Data;

import java.util.Date;

/**
 * 站内消息
 */
@Data
public class SiteMessage {
    private Long id;
    private Long userid;
    /**
     * 消息类型  1-代办任务
     */
    private Integer type;
    /**
     * 消息内容
     */
    private String content;
    /**
     * 是否已读  0- 已读  1-未读
     */
    private Integer isread;
    private Date createtime;
    private Date updatetime;
}
