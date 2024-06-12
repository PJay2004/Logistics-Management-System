package com.poorna.ejb.impl;

import com.poorna.ejb.entity.Order;
import com.poorna.ejb.remote.Orders;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class OrderBean implements Orders {

    @PersistenceContext(unitName = "WebPU")
    private EntityManager entityManager;


    @Override
    public boolean order(String orderNo) {
        Order order = entityManager.createQuery("SELECT u FROM Order u WHERE u.orderNo = :orderNo", Order.class)
                .setParameter("orderNo", orderNo)
//                .setParameter("des1", des1)
                .getSingleResult();

        System.out.println("shit works");
        return order != null;
    }
}
