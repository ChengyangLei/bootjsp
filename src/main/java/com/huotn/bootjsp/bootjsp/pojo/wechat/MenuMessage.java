package com.huotn.bootjsp.bootjsp.pojo.wechat;

/**
 * @Description: MenuMessage
 *
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
public class MenuMessage extends BaseMessage {
    private String EventKey;

    public String getEventKey() {
        return EventKey;
    }

    public void setEventKey(String eventKey) {
        EventKey = eventKey;
    }
}