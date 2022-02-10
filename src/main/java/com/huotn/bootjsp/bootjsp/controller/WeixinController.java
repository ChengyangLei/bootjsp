package com.huotn.bootjsp.bootjsp.controller;

/**
 * @Description: WeixinController
 *
 * @Auther: leichengyang
 * @Date: 2019/4/29 0029
 * @Version 1.0
 */

import com.huotn.bootjsp.bootjsp.common.MenuMain;
import com.huotn.bootjsp.bootjsp.config.weixin.mp.WeChatUtil;
import com.huotn.bootjsp.bootjsp.pojo.AccessToken;
import com.huotn.bootjsp.bootjsp.service.WechatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;

@Controller
public class WeixinController {


    @Resource
    private RestTemplate restTemplate;

    @Autowired
    private WechatService wechatService;

    @Autowired
    private MenuMain menue;

    @Value("${appid}")
    private String appid;

    @Value("${secret}")
    private String secret;

    /**
     * 多媒体文件上传
     * 参数：access_token，type：图片（image）、语音（voice）、视频（video）和缩略图（thumb）
     */
    public String uploadMediaUrl = "http://file.api.weixin.qq.com/cgi-bin/media/upload";

    /**
     * 多媒体文件下载
     * 参数：access_token，media_id：上传后会得到
     */
    public String downloadMediaUrl = "http://file.api.weixin.qq.com/cgi-bin/media/get";


    @RequestMapping(value = "getAccessToken")
    public String getAccessToken() {
        String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + appid + "&secret=" + secret;
        AccessToken accessToken = restTemplate.getForObject(url, AccessToken.class);
        if (StringUtils.hasText(accessToken.getAccess_token())) {
            return accessToken.getAccess_token();
        }
        return null;
    }

//    @GetMapping(value = "wechat")
//    public String validate(@RequestParam(value = "signature") String signature,
//                           @RequestParam(value = "timestamp") String timestamp,
//                           @RequestParam(value = "nonce") String nonce,
//                           @RequestParam(value = "echostr") String echostr) {
//        if (WeChatUtil.checkSignature(signature, timestamp, nonce)) {
//            return echostr;
//        } else {
//            return null;
//        }
//    }

    @GetMapping(value = "wechat")
    public void get(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("WechatController   ----   WechatController");

        System.out.println("========WechatController========= ");
        System.out.println("请求进来了...");

        Enumeration pNames = request.getParameterNames();
        while (pNames.hasMoreElements()) {
            String name = (String) pNames.nextElement();
            String value = request.getParameter(name);
            // out.print(name + "=" + value);

            String log = "name =" + name + "     value =" + value;
            System.out.println(log);
        }

        String signature = request.getParameter("signature");/// 微信加密签名
        String timestamp = request.getParameter("timestamp");/// 时间戳
        String nonce = request.getParameter("nonce"); /// 随机数
        String echostr = request.getParameter("echostr"); // 随机字符串
        PrintWriter out = response.getWriter();

        if (WeChatUtil.checkSignature(signature, timestamp, nonce)) {
            out.print(echostr);
        }
        out.close();
        out = null;

    }

    /**
     * 此处是处理微信服务器的消息转发的
     */
    @PostMapping(value = "wechat")
    @ResponseBody
    public String processMsg(HttpServletRequest request) {
        // 调用核心服务类接收处理请求
        return wechatService.processRequest(request);
    }

    @GetMapping(value="/wxmenu")
    public void home() {
        String token="";
        String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + "wx5f0e6b073a6f4d49" + "&secret=" + "08cf359d7664a8af8d1d71334c236f63";
        AccessToken accessToken = restTemplate.getForObject(url, AccessToken.class);
        if (StringUtils.hasText(accessToken.getAccess_token())) {
            token=accessToken.getAccess_token();
        }
        menue.createMenu(token);

    }

    @GetMapping(value="/wxmenu/get")
    public void getMenu() throws UnsupportedEncodingException {
        String token="";
        String url = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token=53_Xrj46-JcQeYq3CDBgrxGDLxkXtzkq5Fvrn9Iy_arXUaZJ7t1jzjKpUqzLvDpbLtMB6L8HZkKZrFMD8jkjXGs_jH8QuNtiX6j4ZcfFepl7VN1KekLFhtIA-PqNrdQcFiFeUWF9p9Clv1c5YifKJVgAHAFEQ";
        String menuInfo=restTemplate.getForObject(url, String.class);
        System.out.println(new String(menuInfo.getBytes("UTF-8"),"ISO-8859-1"));
    }


}
