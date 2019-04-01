package com.hwua.dao;

import com.hwua.entity.Car;

import java.util.List;
import java.util.Map;

public interface CarDao {

//按照用户id查询购物车
    public Map<String,Object> queryCarByUserAndGood(int userid, int goodid);
//添加到购物车
    public int addCar(Car car);
//修改购物车
    public int updateCar(Car car);
//根据用户id查询购物车
    public List<Map<String,Object>> queryCarByUserId(int userid);
//删除商品
    public int delCarById(int id);
//修改购物车商品数量
    public int updateCount(int carid, int count);

}
