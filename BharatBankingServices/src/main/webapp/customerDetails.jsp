<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Map, java.util.HashMap"  %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/common.css" />
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<%@include file="header.jsp" %>
	<%@include file="transferBanner.jsp" %>
	<%!
		Map<String,String> senderDetails = new HashMap<String,String>();
		Map<String,String> receiverDetails = new HashMap<String,String>();
	%>
	<%
		senderDetails =(HashMap<String,String>) request.getAttribute("senderDetails");
		receiverDetails =(HashMap<String,String>) request.getAttribute("recieverDetails");
		
		if((senderDetails.isEmpty()) || (receiverDetails.isEmpty())){
			RequestDispatcher dispatcher = request.getRequestDispatcher("allCustomers.jsp");
			dispatcher.forward(request, response);
		}
	%>
	
	<div class="container top-margin bottom-margin">
		<h4>Enter the amount below to transfer:</h4>
		<div class="d-flex justify-content-center ">
			<h3>Sender detials</h3>
		</div>
		<div class="d-flex justify-content-center ">
			<table class="table table-hover table-borderless top-margin">
			  <tbody>
			    <tr>
			      <td scope="row">Name</td>
			      <td><%=senderDetails.get("name") %></td>
			    </tr>
			    <tr>
			      <td scope="row">Email</td>
			      <td><%=senderDetails.get("email") %></td>
			    </tr>
			    <tr>
			      <td scope="row">Phone number</td>
			      <td><%=senderDetails.get("phone") %></td>
			    </tr>
			     <tr>
			      <td scope="row">Gender</td>
			      <td><%=senderDetails.get("gender") %></td>
			    </tr>
			     <tr>
			      <td scope="row">Current balance</td>
			      <td><%=senderDetails.get("balance") %></td>
			    </tr>
			     <tr>
			      <td scope="row">Joined at </td>
			      <td><%=senderDetails.get("joined") %></td>
			    </tr>
			  </tbody>
			</table>	
		</div>
		<br>
			
		<div class="d-flex justify-content-center ">
			<h3>Reciever detials</h3>
		</div>
		<div class="d-flex justify-content-center ">
			<table class="table table-dark table-hover table-borderless top-margin">
			  <tbody>
			    <tr>
			      <td scope="row">Name</td>
			      <td><%=receiverDetails.get("name") %></td>
			    </tr>
			    <tr>
			      <td scope="row">Email</td>
			      <td><%=receiverDetails.get("email") %></td>
			    </tr>
			    <tr>
			      <td scope="row">Phone number</td>
			      <td><%=receiverDetails.get("phone") %></td>
			    </tr>
			     <tr>
			      <td scope="row">Gender</td>
			      <td><%=receiverDetails.get("gender") %></td>
				</tr>
			     <tr>
			      <td scope="row">Current balance</td>
			      <td><%=receiverDetails.get("balance") %></td>
			    </tr>
			     <tr>
			      <td scope="row">Joined at </td>
			      <td><%=receiverDetails.get("joined") %></td>
			    </tr>
			  </tbody>
			</table>
		</div>
		<br>
		<form action="makeTransaction" method="post">
			<div class="d-flex justify-content-center">
				<input type="text" class="form-control" id="email" name = "senderEmail"style="display:none;" value="<%=senderDetails.get("email") %>" readonly></input>
				<input type="text" class="form-control" id="email" name = "receiverEmail"style="display:none;" value="<%=receiverDetails.get("email") %>" readonly></input>
				<input type="text" class="form-control" id="amount" name = "amount" placeholder="Enter amount to be transfered"></input>
			</div>
			<br>
			<div class="d-flex justify-content-center">
				<button type="submit" class="btn bg-navy-blue text-white-green">Pay now</button>
			</div>
		</form>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>