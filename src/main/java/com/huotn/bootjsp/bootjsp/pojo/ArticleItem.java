package com.huotn.bootjsp.bootjsp.pojo;

/**
 * @Description: ArticleItem
 *
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
public class ArticleItem {
    private String Title;
    private String Description;
    private String PicUrl;
    private String Url;
    public String getTitle() {
        return Title;
    }
    public void setTitle(String title) {
        Title = title;
    }
    public String getDescription() {
        return Description;
    }
    public void setDescription(String description) {
        Description = description;
    }
    public String getPicUrl() {
        return PicUrl;
    }
    public void setPicUrl(String picUrl) {
        PicUrl = picUrl;
    }
    public String getUrl() {
        return Url;
    }
    public void setUrl(String url) {
        Url = url;
    }
}
