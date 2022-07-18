<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"  %>
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
		ArrayList<String> name = new ArrayList<String>();
		ArrayList<String> email = new ArrayList<String>();
	%>
	<%
		String action="";
		String message="";
		String senderEmail="";
		if(request.getParameter("email")==null)
		{
			action="viewCustomers";
			message="sender";
		}
		else
		{
			action="getDetails";
			message="reciever";
			senderEmail=request.getParameter("email");
			request.setAttribute("senderEmail", senderEmail);

		}
	%>
	<div class="container">
		<div class="d-flex justify-content-center top-margin ">
			<h3>Select a <%=message %></h3>
		</div>
		<table class="table table-hover table-responsive top-margin bottom-margin ">
		  <thead class="table-dark">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Name</th>
		      <th scope="col">Email</th>
		      <th scope="col">Select</th>
		    </tr>
		  </thead>
		  <tbody>
	    
	<%
		
		name = (ArrayList<String>)request.getAttribute("name");
		email = (ArrayList<String>)request.getAttribute("email");
		
		for(int i=0;i<name.size();i++)
		{
			
	%>	
			<tr>
		      <th scope="row"><%=i+1 %></th>
		      <td><%=name.get(i) %></td>
		      <td name="email"><%=email.get(i) %></td>
		      <td><form action="<%=action %>" method="get">
		      		<input type="text" class="form-control" id="email<%=i+1 %>" name = "email"style="display:none;" value="<%=email.get(i) %>" readonly></input>
		      		<button type="submit" class="btn bg-sea-green text-white-green">Select</button>
		      	</form>
		      </td>
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