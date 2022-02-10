package com.huotn.bootjsp.bootjsp.pojo.wechat;

/**
 * @Description: ImageMessage
 *
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
/**
 * 图片消息
 *
 */
public class ImageMessage extends BaseMessage {
    // 图片链接
    private String PicUrl;

    public String getPicUrl() {
        return PicUrl;
    }

    public void setPicUrl(String picUrl) {
        PicUrl = picUrl;
    }
}