package com.huotn.bootjsp.bootjsp.controller;


import com.huotn.bootjsp.bootjsp.pojo.Land;
import com.huotn.bootjsp.bootjsp.service.LandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description: 土地控制类
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
@RequestMapping(value = "land")
public class LandController {
    @Autowired
    private LandService landService;

    @RequestMapping(value = "findAll")
    public String findAll(HttpServletRequest request) {
        List<Land> list = landService.findAll();
        request.setAttribute("landlist", list);
        return "land/listall";
    }


    @RequestMapping(value = "addLand")
    public String addLand(HttpServletRequest request) {
        return "land/addLand";
    }

    @RequestMapping(value = "saveLand")
    public String saveLand(HttpServletRequest request, Land Land) {
        int add = landService.add(Land);
        return "redirect:findAll";
    }

    @RequestMapping(value = "delLand")
    public String delLand(HttpServletRequest request, Land Land) {
        int add = landService.delLand(Land);
        return "redirect:findAll";
    }

    @RequestMapping(value = "updateLand")
    public String updateLand(HttpServletRequest request,String id) {
        Land Land = landService.getLandById(id);
        request.setAttribute("Land",Land);
        return "updateLand";
    }

    @RequestMapping(value = "saveUpdateLand")
    public String saveUpdateLand(Land Land) {
        int add = landService.updateLand(Land);
        return "redirect:findAll";
    }

}




