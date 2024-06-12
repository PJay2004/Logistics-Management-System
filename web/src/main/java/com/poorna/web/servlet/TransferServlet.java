package com.poorna.web.servlet;

import com.poorna.ejb.remote.TransferService;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/transfer")
public class TransferServlet extends HttpServlet {

    @EJB
    TransferService transferService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sourceAccountNo = request.getParameter("sourceAccountNo");
        String destinationAccountNo = request.getParameter("destinationAccountNo");
        String amount = request.getParameter("amount");

        HttpSession session = request.getSession();
        session.setAttribute("transaction", true);
        response.sendRedirect("payment.jsp");

        try {
            transferService.transferAmount(sourceAccountNo, destinationAccountNo, Double.parseDouble(amount));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
