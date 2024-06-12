package com.poorna.ejb.impl;

import com.poorna.ejb.entity.User;
import com.poorna.ejb.exception.UserNotFoundException;
import com.poorna.ejb.remote.Login;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;


@Stateless
public class LoginImpl implements Login {

    @PersistenceContext(unitName = "WebPU")
    private EntityManager entityManager;

    @Override
    public boolean login(String username, String password) throws UserNotFoundException {

        try {
            User user = entityManager.createQuery("SELECT u FROM User u WHERE u.username = :username AND u.password = :password", User.class)
                    .setParameter("username", username)
                    .setParameter("password", password)
                    .getSingleResult();

            System.out.println("impl");

            return user != null;
        } catch (NoResultException e) {

            throw new UserNotFoundException("User not found or invalid credentials!");
        }

    }
}
