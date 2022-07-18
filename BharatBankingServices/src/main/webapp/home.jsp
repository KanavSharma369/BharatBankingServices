<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/common.css" />
		<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
		String title=(String) session.getAttribute("transactionMessageTitle");
		String body = (String) session.getAttribute("transactionMessageBody");
		if(title!=null)
		{
	%>	
		<script type="text/javascript">
		window.onload = function() {	
			$("#myModal").modal('show');
			
		}
		</script>
	<% 
		session.removeAttribute("transactionMessageTitle");
		}	
	%>
	
	<div id ="myModal" class="modal fade" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="myModalTitle"><%=title%></h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <p id="myModalBody"><%=body%></p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

	      </div>
	    </div>
	  </div>
	</div>
		<div class="banner bg-light-green">
			<div class="d-flex justify-content-center sub-banner align-items-center flex-wrap">
				<div class="d-flex flex-column">
					<div>
						Ready for a secure transaction?
					</div>
					
					<div>
						<a href="viewCustomers">
							<button type="button" class="btn bg-white-green text-black">Continue.....</button>
						</a>
					</div>
					
				</div>
				<div>
					<img alt="" src="img/banner-4.png" width="350px">
				</div>
			</div>
		</div>
		<div >
			<p id="message"></p>	
		</div>
		<div class="container">
			<div class="d-flex justify-content-center top-margin ">
				<h1>Services</h1>
			</div>
			<div class="d-flex flex-wrap justify-content-around align-items-center ">
				<div class="d-flex flex-wrap flex-column justify-content-center">
					<a href="viewCustomers">
						<div class="rounded-circle services gradient-navy top-margin bottom-margin">
							<img src="img/make-transaction.png" width="250px" height="auto"/>
						</div>
					</a>
					<div class="bottom-margin d-flex justify-content-center text-black"><h4>Make Transaction</h4></div>
						
				</div>
				<div class="d-flex flex-wrap flex-column justify-content-center">
					<a href="transactionHistroy">
						<div class="rounded-circle services gradient-navy top-margin bottom-margin">
						<img src="img/transaction-history.svg" width="250px" height="auto"/>
					</a>
				</div>
					<div class="bottom-margin d-flex justify-content-center"><h4>Transaction History</h4></div>
					
				</div>
			</div>
		</div>
			<div class="about-us fixed bg-sea-green text-white" id="aboutus">
				<div class="d-flex flex-column justify-content-center top-padding bottom-padding">
					<h1>About us</h1>
					<div>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
						Sed eu cursus leo, a aliquet mi. Nullam et ex feugiat, sagittis lectus sit amet, tincidunt est. 
						Vivamus in lectus sagittis lectus mattis aliquam. 
						Praesent ut aliquet purus. In sapien justo, pharetra molestie elit eget, pretium ultrices quam. 
						Curabitur vel consequat nisi. Suspendisse potenti. Fusce quis augue neque. 
						Donec efficitur feugiat sapien, pulvinar gravida velit lacinia ut. 
						Nullam vitae nisl in erat vestibulum porta. Phasellus dapibus mattis nibh sed porttitor. 
						Nulla ac arcu at nibh vehicula elementum vitae ut diam. 
						Etiam nec nibh rutrum, interdum nisi ac, dictum velit. 
						Integer semper ante est, id varius velit feugiat ut. 
						Duis id urna tristique, iaculis lectus et, vestibulum felis. 
						Suspendisse aliquam ipsum placerat feugiat pulvinar.
						<br><br>
						Donec molestie faucibus scelerisque. 
						Ut egestas lacus ut facilisis suscipit. 
						Fusce massa tellus, faucibus sit amet orci id, tempus aliquam ipsum. 
						Phasellus pretium sem quis urna tincidunt ultrices. 
						Quisque leo tellus, ornare in felis sit amet, pretium imperdiet libero. 
						Vestibulum dui erat, bibendum at enim sed, pellentesque maximus sapien. 
						Donec non ullamcorper arcu, quis vestibulum lectus. Maecenas ut quam massa. 
						Vestibulum tempus orci volutpat congue feugiat. Vivamus ut urna eu sem auctor tincidunt. 
						Quisque ornare hendrerit magna, ac bibendum justo facilisis eu. 
						Vestibulum id eros a enim cursus ultricies vitae varius mauris. 
						Sed tristique ex diam, et porttitor mi aliquam nec.
					</div>
				</div>
			</div>
	<%@ include file="footer.jsp" %>
	
</body>
</html>