package com.hwua.controller;


import com.hwua.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("userController")
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping(value = "/login",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String login(String user_name,String user_password){
        String info=userService.selectUserByUsername(user_name, user_password);
        return info;
    }
}
