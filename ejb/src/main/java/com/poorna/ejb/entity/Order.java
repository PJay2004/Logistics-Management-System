package com.poorna.ejb.entity;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String orderNo;
    private String des1;
    private String des2;
    private String des3;
    private String des4;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getDes1() {
        return des1;
    }

    public void setDes1(String des1) {
        this.des1 = des1;
    }

    public String getDes2() {
        return des2;
    }

    public void setDes2(String des2) {
        this.des2 = des2;
    }

    public String getDes3() {
        return des3;
    }

    public void setDes3(String des3) {
        this.des3 = des3;
    }

    public String getDes4() {
        return des4;
    }

    public void setDes4(String des4) {
        this.des4 = des4;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (!Objects.equals(id, order.id)) return false;
        if (!Objects.equals(orderNo, order.orderNo)) return false;
        if (!Objects.equals(des1, order.des1)) return false;
        if (!Objects.equals(des2, order.des2)) return false;
        if (!Objects.equals(des3, order.des3)) return false;
        return Objects.equals(des4, order.des4);
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (orderNo != null ? orderNo.hashCode() : 0);
        result = 31 * result + (des1 != null ? des1.hashCode() : 0);
        result = 31 * result + (des2 != null ? des2.hashCode() : 0);
        result = 31 * result + (des3 != null ? des3.hashCode() : 0);
        result = 31 * result + (des4 != null ? des4.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", orderNo='" + orderNo + '\'' +
                ", des1='" + des1 + '\'' +
                ", des2='" + des2 + '\'' +
                ", des3='" + des3 + '\'' +
                ", des4='" + des4 + '\'' +
                '}';
    }
}
