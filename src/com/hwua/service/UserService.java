package com.hwua.service;

import com.hwua.entity.User;

import java.util.List;

public interface UserService {

    public String selectUserByUsername(String user_username,String user_password);

}
