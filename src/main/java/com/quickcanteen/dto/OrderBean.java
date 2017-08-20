package com.quickcanteen.dto;

import java.util.List;

/**
 * Created by 11022 on 2017/8/20.
 */
public class OrderBean {
    private Integer orderId;
    private Integer userId;
    private Integer companyId;
    private String companyName;
    private Integer orderState;
    private Long publishTime;
    private Long completeTime;
    private Double totalPrice;
    private Integer timeslotId;
    private String timeslot;
    private List<DishesBean> dishesBeanList;


    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getOrderState() {
        return orderState;
    }

    public void setOrderState(Integer orderState) {
        this.orderState = orderState;
    }

    public Long getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Long publishTime) {
        this.publishTime = publishTime;
    }

    public Long getCompleteTime() {
        return completeTime;
    }

    public void setCompleteTime(Long completeTime) {
        this.completeTime = completeTime;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Integer getTimeslotId() {
        return timeslotId;
    }

    public void setTimeslotId(Integer timeslotId) {
        this.timeslotId = timeslotId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(String timeslot) {
        this.timeslot = timeslot;
    }

    public List<DishesBean> getDishesBeanList() {
        return dishesBeanList;
    }

    public void setDishesBeanList(List<DishesBean> dishesBeanList) {
        this.dishesBeanList = dishesBeanList;
    }
}
