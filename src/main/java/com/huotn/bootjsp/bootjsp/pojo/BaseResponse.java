package com.huotn.bootjsp.bootjsp.pojo;

/**
 * @description: //TODO
 * @author: leichengyang
 * @create: 2022/2/10
 **/
public class BaseResponse {

    private String errcode;//错误码


    private String errmsg;//错误提示信息

    public String getErrcode() {
        return errcode;
    }

    public void setErrcode(String errcode) {
        this.errcode = errcode;
    }

    public String getErrmsg() {
        return errmsg;
    }

    public void setErrmsg(String errmsg) {
        this.errmsg = errmsg;
    }
}
