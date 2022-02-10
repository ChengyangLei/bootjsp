package com.huotn.bootjsp.bootjsp.pojo.wechat;

/**
 * @Description: VoiceMessage
 *
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
/**
 * 音频消息
 *
 */
public class VoiceMessage extends BaseMessage {
    // 媒体ID
    private String MediaId;
    // 语音格式
    private String Format;

    public String getMediaId() {
        return MediaId;
    }

    public void setMediaId(String mediaId) {
        MediaId = mediaId;
    }

    public String getFormat() {
        return Format;
    }

    public void setFormat(String format) {
        Format = format;
    }
}