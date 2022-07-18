package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CustomerDAO;

/**
 * Servlet implementation class AllCustomerController
 */
public class AllCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerDAO customers = new CustomerDAO();
		String senderEmail = request.getParameter("email");
		if(senderEmail == null)
		{	//This will get names for displaying sender
			ArrayList<String> name = customers.getNames();
			ArrayList<String> email = customers.getEmails();

			request.setAttribute("name",name);
			request.setAttribute("email",email);
			RequestDispatcher dispatcher = request.getRequestDispatcher("allCustomers.jsp");
			dispatcher.forward(request, response);
		}
		else
		{	//This will get names for displaying receiver except sender
			ArrayList<String> name = customers.getNames(senderEmail);
			ArrayList<String> email = customers.getEmails(senderEmail);

			request.setAttribute("name",name);
			request.setAttribute("email",email);
			
			HttpSession session = request.getSession();
			session.setAttribute("senderEmail", senderEmail);
			RequestDispatcher dispatcher = request.getRequestDispatcher("allCustomers.jsp");
			dispatcher.forward(request, response);
		}
	}
}
