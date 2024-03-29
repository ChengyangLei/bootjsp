package com.huotn.bootjsp.bootjsp.controller;


import com.huotn.bootjsp.bootjsp.common.MenuMain;
import com.huotn.bootjsp.bootjsp.pojo.AccessToken;
import com.huotn.bootjsp.bootjsp.pojo.Menu;
import com.huotn.bootjsp.bootjsp.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description: 用户控制类
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
@RequestMapping(value = "menu")
public class MenuController {
    @Autowired
    private MenuService menuService;



    @Resource
    private RestTemplate restTemplate;


    @RequestMapping(value = "findAll")
    public String findAll(HttpServletRequest request) {
        List<Menu> list = menuService.findAll();
        request.setAttribute("list", list);
        return "menu/listall";
    }


    @RequestMapping(value = "addMenu")
    public String addMenu(HttpServletRequest request) {
        return "menu/addMenu";
    }

    @RequestMapping(value = "saveMenu")
    public String saveMenu(HttpServletRequest request, Menu menu) {
        int add = menuService.add(menu);
        return "redirect:findAll";
    }

    @RequestMapping(value = "delMenu")
    public String delMenu(HttpServletRequest request, Menu menu) {
        int add = menuService.delMenu(menu);
        return "redirect:findAll";
    }

    @RequestMapping(value = "updateMenu")
    public String updateMenu(HttpServletRequest request, String id) {
        Menu role = menuService.getMenuById(id);
        request.setAttribute("role", role);
        return "updateMenu";
    }

    @RequestMapping(value = "saveUpdateMenu")
    public String saveUpdateMenu(Menu menu) {
        int add = menuService.updateMenu(menu);
        return "redirect:findAll";
    }

}




