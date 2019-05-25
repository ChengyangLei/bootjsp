package com.huotn.bootjsp.bootjsp.controller;


import com.huotn.bootjsp.bootjsp.pojo.Role;
import com.huotn.bootjsp.bootjsp.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description: 用户控制类
 * @Company: 深圳市东深电子股份有限公司
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
@RequestMapping(value = "role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping(value = "findAll")
    public String findAll(HttpServletRequest request) {
        List<Role> list = roleService.findAll();
        request.setAttribute("list", list);
        return "role/listall";
    }


    @RequestMapping(value = "addRole")
    public String addRole(HttpServletRequest request) {
        return "role/addRole";
    }

    @RequestMapping(value = "saveRole")
    public String saveRole(HttpServletRequest request, Role role) {
        int add = roleService.add(role);
        return "redirect:findAll";
    }

    @RequestMapping(value = "delRole")
    public String delRole(HttpServletRequest request, Role role) {
        int add = roleService.delRole(role);
        return "redirect:findAll";
    }

    @RequestMapping(value = "updateRole")
    public String updateRole(HttpServletRequest request,String id) {
        Role role = roleService.getRoleById(id);
        request.setAttribute("role",role);
        return "updateRole";
    }

    @RequestMapping(value = "saveUpdateRole")
    public String saveUpdateRole(Role role) {
        int add = roleService.updateRole(role);
        return "redirect:findAll";
    }

}




