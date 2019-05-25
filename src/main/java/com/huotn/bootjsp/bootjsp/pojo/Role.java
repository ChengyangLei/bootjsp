package com.huotn.bootjsp.bootjsp.pojo;

/**
 * @Description: Role
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/29 0029
 * @Version 1.0
 */
public class Role {

    private Integer id;

    private String name;


    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
