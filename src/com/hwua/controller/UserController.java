package com.hwua.controller;


import com.hwua.entity.User;
import com.hwua.service.UserService;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("userController")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/login",produces = "text/html;charset=UTF-8")
    public String login(String user_username, String user_password, String auth, HttpSession hs){
        String rand=(String)hs.getAttribute("rand");
        if(rand.equalsIgnoreCase(auth)){
            String info=userService.selectUserByUsername(user_username,user_password);
            if(info.equals("登陆成功")){
                hs.setAttribute("user_username",user_username);
            }
            return info;
        }else {
            return "验证码错误";
        }

    }
    @RequestMapping(value = "/register",produces = "text/html;charset=UTF-8")
    public String register(String user_username,String user_password,String user_phone,String user_email){
        User user =new User(null,user_username,user_password,user_phone,user_email);
        int number= userService.insertUser(user);
        if(number==1){
            return "index";
        }else{
            return "register";
        }
    }

    @RequestMapping
    @ResponseBody
    public  String logout(HttpSession hs){
        hs.setAttribute("user_username",null);
        return "注销成功";

    }
}
