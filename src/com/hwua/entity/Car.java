package com.hwua.entity;

public class Car {          //购物车
    private Integer car_id;     //购物车
    private Integer user_userid; //用户id
    private Integer good_id; //商品id
    private Integer car_counts; //计数

    public Car() {
    }

    public Car(Integer car_id, Integer user_userid, Integer good_id, Integer car_counts) {
        this.car_id = car_id;
        this.user_userid = user_userid;
        this.good_id = good_id;
        this.car_counts = car_counts;
    }

    public Integer getCar_id() {
        return car_id;
    }

    public void setCar_id(Integer car_id) {
        this.car_id = car_id;
    }

    public Integer getUser_userid() {
        return user_userid;
    }

    public void setUser_userid(Integer user_userid) {
        this.user_userid = user_userid;
    }

    public Integer getGood_id() {
        return good_id;
    }

    public void setGood_id(Integer good_id) {
        this.good_id = good_id;
    }

    public Integer getCar_counts() {
        return car_counts;
    }

    public void setCar_counts(Integer car_counts) {
        this.car_counts = car_counts;
    }


    @Override
    public String toString() {
        return "Car{" +
                "car_id=" + car_id +
                ", car_userid=" + user_userid +
                ", good_id=" + good_id +
                ", car_counts=" + car_counts +
                '}';
    }
}
