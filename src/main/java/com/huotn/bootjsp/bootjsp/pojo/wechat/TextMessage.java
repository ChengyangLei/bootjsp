package com.huotn.bootjsp.bootjsp.pojo.wechat;

/**
 * @Description: TextMessage
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
/**
 * 文本消息
 *
 */
public class TextMessage extends BaseMessage {
    // 消息内容
    private String Content;

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }
}