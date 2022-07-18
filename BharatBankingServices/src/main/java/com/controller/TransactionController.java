package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.TransactionDAO;

/**
 * Servlet implementation class TransactionController
 */
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String transactionMessageTitle = "";
		String transactionMessageBody = "";
		HttpSession session = request.getSession();
		try {
			
			TransactionDAO transaction = new TransactionDAO();
			
			String senderEmail = request.getParameter("senderEmail");
			String receiverEmail = request.getParameter("receiverEmail");
			double amount = Double.parseDouble(request.getParameter("amount"));
			
			int status = transaction.makeTransaction(senderEmail, receiverEmail, amount);
			if(status == 1)
			{
				transactionMessageTitle="SUCCESS";
				transactionMessageBody="Transaction is complete";

			}
			else {
				transactionMessageTitle = "ERROR";
				transactionMessageBody="Transaction can not be made";
			}
			
		} catch (NumberFormatException e) {			
			transactionMessageTitle = "ERROR";
			transactionMessageBody="Transaction can not be made\nEnter only whole numbers";
			e.printStackTrace();
		}
		catch(Exception e) {
			transactionMessageTitle = "ERROR";
			transactionMessageBody="Transaction can not be made";
			e.printStackTrace();
		}
		finally 
		{
			
			session.setAttribute("transactionMessageTitle",transactionMessageTitle);
			session.setAttribute("transactionMessageBody",transactionMessageBody);
			response.sendRedirect("index.html");
		}

		
	}

}
