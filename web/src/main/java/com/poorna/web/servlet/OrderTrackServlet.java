package com.poorna.web.servlet;

import com.poorna.ejb.remote.Orders;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/orderTrack")
public class OrderTrackServlet extends HttpServlet {

    @EJB(lookup = "java:global/ear-1.0/com.poorna-ejb-1.0/OrderBean")
    private Orders orders;


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String orderNO = request.getParameter("orderNo");

        boolean log = orders.order(orderNO);
        HttpSession session = request.getSession();
        session.setAttribute("order", true);
        session.setAttribute("orderNo", orderNO);

        request.getRequestDispatcher("/orderdashboard.jsp").forward(request, response);
        request.getRequestDispatcher("/payment.jsp").forward(request, response);

        response.getWriter().write("Login: "+log);
    }



}
