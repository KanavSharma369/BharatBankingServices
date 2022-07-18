package com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.TransactionHistoryDAO;

/**
 * Servlet implementation class TransactionHistoryController
 */
@WebServlet("/transactionHistroy")
public class TransactionHistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TransactionHistoryDAO transactionHistory = new TransactionHistoryDAO();
		Map<String, List<String>> transaction = new HashMap<String, List<String>>();
		
		transaction = transactionHistory.getTransactionHistory();
		
		HttpSession session = request.getSession();
		session.setAttribute("transactionHistory",transaction);
		RequestDispatcher dispatcher = request.getRequestDispatcher("transactionHistory.jsp");
		dispatcher.forward(request,response);
	}

	

}
