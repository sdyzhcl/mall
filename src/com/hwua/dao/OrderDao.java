package com.hwua.dao;

import com.hwua.entity.OrderDetail;
import com.hwua.entity.Orders;


import java.util.List;
import java.util.Map;

public interface OrderDao {


    public int addOrder(Orders orders);

    public int addOrderDetail(OrderDetail detail);

    public List<Map<String,Object>> queryOrderByUserId(int userid);

    public int updateStatusById(int id, String status);

}
