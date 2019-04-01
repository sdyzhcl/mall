package com.hwua.dao;

import com.hwua.entity.User;

import java.util.List;

public interface UserDao {
//    按照名字查询用户
    public User selectUserByUsername(String user_username);
//    增加用户
    public int addUser(User user);
//    查询用户所有的信息
    public User queryUserBynamepass(String user_username,String user_password);
//    查询带有某个字母的用户信息
    public List<User> queryUser(String user_username);
//    更新用户密码
    public int updatePassword(String user_username,String user_password);
}
