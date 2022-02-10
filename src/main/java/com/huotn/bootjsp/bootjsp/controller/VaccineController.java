package com.huotn.bootjsp.bootjsp.controller;


import com.huotn.bootjsp.bootjsp.pojo.Land;
import com.huotn.bootjsp.bootjsp.pojo.Vaccine;
import com.huotn.bootjsp.bootjsp.service.VaccineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description: 土地控制类
 *
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
@RequestMapping(value = "vaccine")
public class VaccineController {
    @Autowired
    private VaccineService vaccineService;

    @RequestMapping(value = "vaccineList")
    public ModelAndView findAll(ModelAndView model) {
        List<Vaccine> list = vaccineService.findAll();
        List<String> areaList = vaccineService.getAreaList();
        model.addObject("areaList", areaList);
        model.addObject("list",list);
        return model;
    }

    @RequestMapping(value = "getVaccineList")
    public ModelAndView getVaccineList(ModelAndView model,String name,String areaName) {
        List<Vaccine> list = vaccineService.getVaccineList("%"+name+"%",areaName);
        List<String> areaList = vaccineService.getAreaList();
        model.addObject("areaList", areaList);
        model.addObject("list",list);
        model.setViewName("vaccine/vaccineList");
        return model;
    }

    @RequestMapping(value = "getAreaList")
    public List<String> getAreaList(HttpServletRequest request) {
        List<String> list = vaccineService.getAreaList();
        request.setAttribute("areaList", list);
        return list;
    }



}




