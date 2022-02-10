package com.huotn.bootjsp.bootjsp.controller;


import com.huotn.bootjsp.bootjsp.pojo.User;
import com.huotn.bootjsp.bootjsp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description: 用户控制类
 *
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "findAll")
    public String findAll(HttpServletRequest request) {
        List<User> list = userService.findAll();
        request.setAttribute("userlist", list);
        return "listall";
    }


    @RequestMapping(value = "addUser")
    public String addUser(HttpServletRequest request) {
        return "addUser";
    }

    @RequestMapping(value = "saveUser")
    public String saveUser(HttpServletRequest request, User user) {
        int add = userService.add(user);
        return "redirect:findAll";
    }

    @RequestMapping(value = "delUser")
    public String delUser(HttpServletRequest request, User user) {
        int add = userService.delUser(user);
        return "redirect:findAll";
    }

    @RequestMapping(value = "updateUser")
    public String updateUser(HttpServletRequest request,String id) {
        User user = userService.getUserById(id);
        request.setAttribute("user",user);
        return "updateUser";
    }

    @RequestMapping(value = "saveUpdateUser")
    public String saveUpdateUser(User user) {
        int add = userService.updateUser(user);
        return "redirect:findAll";
    }

}




