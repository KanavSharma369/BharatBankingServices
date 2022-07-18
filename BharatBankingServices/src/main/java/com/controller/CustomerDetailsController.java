package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CustomerDAO;

/**
 * Servlet implementation class CustomerDetailsController
 */
public class CustomerDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerDAO customer = new CustomerDAO(); 
		String senderEmail="", recieverEmail="";
		HttpSession session = request.getSession();
		
		senderEmail =(String) session.getAttribute("senderEmail");
		PrintWriter out = response.getWriter();
		out.println(senderEmail);
		recieverEmail = request.getParameter("email");
		
		Map<String, String> senderDetails = customer.getDetails(senderEmail);
		Map<String, String> recieverDetails = customer.getDetails(recieverEmail);

		request.setAttribute("senderDetails",senderDetails);
		request.setAttribute("recieverDetails",recieverDetails);
		session.setAttribute("recieverEmail",recieverEmail);
		RequestDispatcher dispatcher = request.getRequestDispatcher("customerDetails.jsp");
		dispatcher.forward(request,response);
		
	}
}
