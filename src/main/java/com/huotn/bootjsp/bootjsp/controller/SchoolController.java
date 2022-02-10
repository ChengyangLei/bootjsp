package com.huotn.bootjsp.bootjsp.controller;

import com.huotn.bootjsp.bootjsp.pojo.Land;
import com.huotn.bootjsp.bootjsp.pojo.School;
import com.huotn.bootjsp.bootjsp.service.LandService;
import com.huotn.bootjsp.bootjsp.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description: IndexController
 *
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
public class SchoolController {

    @Autowired
    private SchoolService schoolService;

    @RequestMapping(value = "/schoolMap")
    public String index(HttpServletRequest request){
        List<String> list = schoolService.findAll();
        request.setAttribute("list", list);
        return "schoolMap";
    }

    @RequestMapping(value = "/school/schoolList")
    @ResponseBody
    public ModelAndView  getSchoolList(ModelAndView model){
        List<School> list = schoolService.getSchoolList();
        model.addObject("list",list);
        model.setViewName("schoolList");
        return model;
    }

    @RequestMapping(value = "/school/getSchoolListByParam")
    @ResponseBody
    public ModelAndView  getSchoolListByParam(ModelAndView model,String name){
        List<School> list = schoolService.getSchoolListByParam("%"+name+"%");
        model.addObject("list",list);
        model.setViewName("schoolList");
        return model;
    }

    @RequestMapping(value = "school/getListByName")
    @ResponseBody
    public List<String>  getListByName(String name){
        List<String> list = schoolService.getListByName("%"+name+"%");
        return list;
    }


}
