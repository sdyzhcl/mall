package com.hwua.entity;

import java.util.Date;

public class Orders {        //订单
    private Integer order_id;      //订单id
    private Integer user_userid;//用户id
    private Date createDate;//生产日期
    private String code;
    private Double total;
    private String status;
    private Integer addressid; //地址

    public Orders() {
    }

    public Orders(Integer order_id, Integer user_userid, Date createDate, String code, Double total, String status, Integer addressid) {
        this.order_id = order_id;
        this.user_userid = user_userid;
        this.createDate = createDate;
        this.code = code;
        this.total = total;
        this.status = status;
        this.addressid = addressid;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getUser_userid() {
        return user_userid;
    }

    public void setUser_userid(Integer user_userid) {
        this.user_userid = user_userid;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    @Override
    public String toString() {
        return "订单{" +
                "订单编号=" + order_id +
                ", 用户id=" + user_userid +
                ", 创建日期=" + createDate +
                ", code='" + code + '\'' +
                ", total=" + total +
                ", status='" + status + '\'' +
                ", addressid=" + addressid +
                '}';
    }
}
