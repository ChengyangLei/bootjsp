package com.huotn.bootjsp.bootjsp.pojo;

/**
 * @description: //TODO
 * @author: leichengyang
 * @create: 2022/2/10
 **/
public class PhoneInfo extends BaseResponse{

    private String phoneNumber;	//string	用户绑定的手机号（国外手机号会有区号）
    private String purePhoneNumber;	//string	没有区号的手机号
    private String countryCode;	//string	区号
    private String watermark;//	Object	数据水印

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPurePhoneNumber() {
        return purePhoneNumber;
    }

    public void setPurePhoneNumber(String purePhoneNumber) {
        this.purePhoneNumber = purePhoneNumber;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getWatermark() {
        return watermark;
    }

    public void setWatermark(String watermark) {
        this.watermark = watermark;
    }
}
