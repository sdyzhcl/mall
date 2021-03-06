package com.hwua.entity;

public class User {
    private Integer user_id;
    private String user_username;
    private String user_password;
    private String user_phone;
    private String user_email;  //邮箱

    public User() {
    }

    public User(Integer user_id, String user_username, String user_password, String user_phone,String user_email) {
        this.user_id = user_id;
        this.user_username = user_username;
        this.user_password = user_password;
        this.user_phone = user_phone;
        this.user_email = user_email;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_username() {
        return user_username;
    }

    public void setUser_username(String user_username) {
        this.user_username = user_username;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    @Override
    public String toString() {
        return "User{" +
                "用户ID=" + user_id +
                ", 用户名='" + user_username + '\'' +
                ", 用户密码='" + user_password + '\'' +
                ", 联系电话='" + user_phone + '\'' +

                ", 电子邮箱='" + user_email + '\'' +
                '}';
    }
}
