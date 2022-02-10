package com.huotn.bootjsp.bootjsp.controller;

import com.alibaba.fastjson.JSONObject;
import com.huotn.bootjsp.bootjsp.pojo.AccessToken;
import com.huotn.bootjsp.bootjsp.pojo.PhoneInfo;
import com.huotn.bootjsp.bootjsp.pojo.TbGarbage;
import com.huotn.bootjsp.bootjsp.pojo.wechat.MiniAppResponse;
import com.huotn.bootjsp.bootjsp.service.TbGarbageService;
import com.huotn.bootjsp.bootjsp.service.VaccineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;
import java.net.URLDecoder;
import java.util.Base64;

/**
 * @Description: WxMinAppController
 *
 * @Auther: leichengyang
 * @Date: 2019/7/5 0005
 * @Version 1.0
 */
@Controller
@RequestMapping(value = "/minApp")
public class WxMinAppController {

    @Autowired
    private TbGarbageService tbGarbageService;


    /**
     * 获取openid,session_key
     * @param code
     * @return
     */
    @GetMapping("/getCode2Session")
    @ResponseBody
    public MiniAppResponse getCode2Session(String code){
        RestTemplate template = new RestTemplate();
        String result = template.getForObject("https://api.weixin.qq.com/sns/jscode2session?appid=wx753cd27d08ef14eb&secret=4d3963e0a8932b4e95b31340d5e2385c&js_code=" + code + "&grant_type=authorization_code", String.class);
        if (StringUtils.hasText(result)){
            return JSONObject.parseObject(result, MiniAppResponse.class);
        }
        return null;
    }

    /**
     * 获取手机号
     * @param code
     * @return
     */
    @GetMapping("/getPhoneNumber")
    @ResponseBody
    public PhoneInfo getPhoneNumber(String code){
        RestTemplate template = new RestTemplate();
        AccessToken accessToken = getAccessToken();
        String access_token=accessToken.getAccess_token();
        JSONObject paramjson=new JSONObject();
//        paramjson.put("access_token", access_token);
        paramjson.put("code", code);
        String s = paramjson.toJSONString();
        HttpEntity<String> requestParams = new HttpEntity<>(s);
        ResponseEntity<PhoneInfo> result = template.postForEntity("https://api.weixin.qq.com/wxa/business/getuserphonenumber?access_token="+access_token, requestParams,PhoneInfo.class);
        if (result!=null){
            return result.getBody();
        }
        return null;
    }

    /**
     * 获取access_token
     * @return
     */
    @GetMapping("/getAccessToken")
    @ResponseBody
    public AccessToken getAccessToken(){
        RestTemplate template = new RestTemplate();
        String result = template.getForObject("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx753cd27d08ef14eb&secret=4d3963e0a8932b4e95b31340d5e2385c", String.class);
        if (StringUtils.hasText(result)){
            return JSONObject.parseObject(result, AccessToken.class);
        }
        return null;
    }


    @RequestMapping(value="/getGCategory",method = RequestMethod.GET)
    @ResponseBody
    public void buttonTest(String gcName, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        /* 设置响应头允许ajax跨域访问 */
        response.setHeader("Access-Control-Allow-Origin", "*");
        /* 星号表示所有的异域请求都可以接受， */
        response.setHeader("Access-Control-Allow-Methods", "GET,POST");
        gcName= URLDecoder.decode(gcName);
        TbGarbage gCategory = tbGarbageService.getGCategory("%"+gcName+"%");

        System.out.println("gcName="+gcName);

        //返回值给微信小程序
        Writer out = response.getWriter();
        String name = gCategory.getType_name();
        out.write(name);
        out.flush();
    }

}
