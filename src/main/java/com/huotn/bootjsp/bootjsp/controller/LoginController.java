package com.huotn.bootjsp.bootjsp.controller;

import com.huotn.bootjsp.bootjsp.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Description: LoginController
 *
 * @Auther: leichengyang
 * @Date: 2019/4/28 0028
 * @Version 1.0
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login")
    public String loginPage() {
        return "login";
    }


    @RequestMapping(value = "/userLogin")
    public String userLogin(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request) {
//        String username = user.getUsername();
//        String password = user.getPassword();
        HttpSession session = request.getSession();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            session.setAttribute("user",subject.getPrincipal());
            return "index";
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:login";
        }
    }

    @RequestMapping(value = "/logout")
    public String logout() {
        SecurityUtils.getSubject().logout();
        return "login";
    }
}
