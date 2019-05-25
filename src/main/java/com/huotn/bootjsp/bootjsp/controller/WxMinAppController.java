package com.huotn.bootjsp.bootjsp.controller;

import com.huotn.bootjsp.bootjsp.pojo.TbGarbage;
import com.huotn.bootjsp.bootjsp.service.TbGarbageService;
import com.huotn.bootjsp.bootjsp.service.VaccineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;
import java.net.URLDecoder;
import java.util.Base64;

/**
 * @Description: WxMinAppController
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/7/5 0005
 * @Version 1.0
 */
@Controller
@RequestMapping(value = "/minApp")
public class WxMinAppController {

    @Autowired
    private TbGarbageService tbGarbageService;


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
