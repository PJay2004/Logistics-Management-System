package com.poorna.web.servlet;

import com.poorna.ejb.exception.UserNotFoundException;
import com.poorna.ejb.remote.Login;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @EJB(lookup = "java:global/ear-1.0/com.poorna-ejb-1.0/LoginImpl")
    private Login login;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            boolean log = login.login(username, password);
        } catch (UserNotFoundException e) {
            throw new RuntimeException(e);
        }

        HttpSession session = request.getSession();
        session.setAttribute("login", true);
        session.setAttribute("username", username);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
        request.getRequestDispatcher("/orderdashboard.jsp").forward(request, response);
        request.getRequestDispatcher("/account.jsp").forward(request, response);
        response.sendRedirect("index.jsp");

    }

}
