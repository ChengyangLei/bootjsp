package com.huotn.bootjsp.bootjsp.common;


import com.huotn.bootjsp.bootjsp.pojo.wechat.ClickButton;
import com.huotn.bootjsp.bootjsp.pojo.wechat.ViewButton;
import jdk.nashorn.internal.runtime.GlobalConstants;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import net.sf.json.JSONArray;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;


/**
 * @description: //TODO
 * @author: leichengyang
 * @create: 2022/1/26
 **/
@Component
public class MenuMain {

    @Resource
    private RestTemplate restTemplate;

    public void createMenu(String accessToken){
        ClickButton cbt=new ClickButton();
        cbt.setKey("image");
        cbt.setName("回复图片");
        cbt.setType("click");


        ViewButton vbt=new ViewButton();
        vbt.setUrl("https://www.cnblogs.com/gede");
        vbt.setName("博客");
        vbt.setType("view");

        JSONArray sub_button=new JSONArray();
        sub_button.add(cbt);
        sub_button.add(vbt);


        JSONObject buttonOne=new JSONObject();
        buttonOne.put("name", "菜单");
        buttonOne.put("sub_button", sub_button);

        JSONArray button=new JSONArray();
        button.add(vbt);
        button.add(buttonOne);
        button.add(cbt);

        JSONObject menujson=new JSONObject();
        menujson.put("button", button);
        System.out.println(menujson);

        //这里为请求接口的url   +号后面的是token，这里就不做过多对token获取的方法解释
        String url="https://api.weixin.qq.com/cgi-bin/menu/create?access_token="+ accessToken;

        try{
            HttpHeaders headers = new HttpHeaders();
            String s = menujson.toJSONString();
            headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
            HttpEntity<String> requestParams = new HttpEntity<>(s, headers);
            ResponseEntity<String> rs=restTemplate.postForEntity(url,requestParams,String.class);
            System.out.println(rs);
        }catch(Exception e){
            System.out.println("请求错误！");
        }
    }
}
