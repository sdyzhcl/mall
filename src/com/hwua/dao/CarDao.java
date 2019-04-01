package com.hwua.dao;

import com.hwua.entity.Car;

import java.util.List;
import java.util.Map;

public interface CarDao {


    public Map<String,Object> queryCarByUserAndGood(int userid, int goodid);

    public int addCar(Car car);

    public int updateCar(Car car);

    public List<Map<String,Object>> queryCarByUserId(int userid);

    public int delCarById(int id);

    public int updateCount(int carid, int count);

}
