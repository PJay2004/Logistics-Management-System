package com.poorna.ejb.impl;

import com.poorna.ejb.entity.Admin;
import com.poorna.ejb.entity.User;
import com.poorna.ejb.exception.UserNotFoundException;
import com.poorna.ejb.remote.AdminLog;
import com.poorna.ejb.remote.Login;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;

@Stateless
public class AdminLogImpl implements AdminLog{

    @PersistenceContext(unitName = "WebPU")
    private EntityManager entityManager;

    @Override
    public boolean login(String username, String password) throws UserNotFoundException {
        try {
            Admin admin = entityManager.createQuery("SELECT u FROM Admin u WHERE u.username = :username AND u.password = :password", Admin.class)
                    .setParameter("username", username)
                    .setParameter("password", password)
                    .getSingleResult();

            System.out.println("impl");

            return admin != null;
        } catch (NoResultException e) {

            throw new UserNotFoundException("User not found or invalid credentials!");
        }
    }
}
