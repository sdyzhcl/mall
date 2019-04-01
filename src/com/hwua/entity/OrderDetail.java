package com.hwua.entity;

public class OrderDetail {  //订单详情
    private Integer od_id;     //订单id
    private Integer good_id; //商品id
    private Integer order_id;//
    private Integer count;    //计数
    private Double price;   //价格

    public OrderDetail() {
    }


    public OrderDetail(Integer od_id, Integer good_id, Integer order_id, Integer count, Double price) {
        this.od_id = od_id;
        this.good_id = good_id;
        this.order_id = order_id;
        this.count = count;
        this.price = price;
    }

    public Integer getOd_id() {
        return od_id;
    }

    public void setOd_id(Integer od_id) {
        this.od_id = od_id;
    }

    public Integer getGood_id() {
        return good_id;
    }

    public void setGood_id(Integer good_id) {
        this.good_id = good_id;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "od_id=" + od_id +
                ", good_id=" + good_id +
                ", order_id=" + order_id +
                ", count=" + count +
                ", price=" + price +
                '}';
    }
}
