package com.huotn.bootjsp.bootjsp.pojo;

/**
 * @Description: Menu
 *
 * @Auther: leichengyang
 * @Date: 2019/4/30 0030
 * @Version 1.0
 */
public class Menu {

    private int id;

    private String name;

    private int pid;

    private String url;

    private String sort;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }
}
