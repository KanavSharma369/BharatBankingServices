<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.HashMap,java.util.Map,java.util.List,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
</head>
<body>
	<%@ include file="header.jsp" %>
	<%@include file="transactionBanner.jsp" %>
	<%!
		Map<String, List<String>> transactionHistory = new HashMap<String, List<String>>();
		List<String> senderName = new ArrayList<String>();
		List<String> senderEmail = new ArrayList<String>();
		List<String> receiverName = new ArrayList<String>();
		List<String> receiverEmail = new ArrayList<String>();
		List<String> amount = new ArrayList<String>();
		List<String> date = new ArrayList<String>();
	%>
	<%
		transactionHistory =(Map<String, List<String>>) session.getAttribute("transactionHistory");
		
		senderName = transactionHistory.get("senderName");
		senderEmail = transactionHistory.get("senderEmail");
		receiverName = transactionHistory.get("receiverName");
		receiverEmail = transactionHistory.get("receiverEmail");
		amount = transactionHistory.get("amount");
		date = transactionHistory.get("date");
		
	%>
	<div class="container">
		<table class="table table-hover table-responsive top-margin bottom-margin ">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Sender</th>
		      <th scope="col">Sender Email</th>
		      <th scope="col">Receiver</th>
		      <th scope="col">Receiver Email</th>
		      <th scope="col">Amount Transfered</th>
		      <th scope="col">Transaction Date</th>
		    </tr>
		  </thead>
		  <tbody>
	<%
		for(int i=0;i<senderName.size();i++)
		{
	%>  
		  <tr >
		      <th scope="row"><%=(i+1) %></th>
		      <td ><%=senderName.get(i) %></td>
		      <td ><%=senderEmail.get(i) %></td>
		      <td ><%=receiverName.get(i) %></td>
		      <td ><%=receiverEmail.get(i) %></td>
		      <td >Rs. <%=amount.get(i) %></td>
		      <td ><%=date.get(i) %></td>
		  </tr>   
	<%
		}
	%>
		</tbody>
		</table>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>