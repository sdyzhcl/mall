package com.hwua.serviceImpl;

import com.hwua.dao.UserDao;
import com.hwua.entity.User;
import com.hwua.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class UserServiceImpl  implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public String selectUserByUsername(String user_username, String user_password) {
        User user=userDao.selectUserByUsername(user_username);
        if(user==null){
            return "没有该用户";
        }else if(user.getUser_password().equals(user_password)){
            return "登录成功";
        }else{
            return "密码错误";
        }
    }

    @Override
    public int insertUser(User user) {
        return 0;
    }
}
