<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/common.css" />
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<footer class="site-footer fixed position-sticky">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-5">
              <a href="/BharatBankingServices/home">
              	<img src="img/logo.png" alt="" width="90px" height="auto" class=" align-text-top justify-content-center">
                <h2>Bharat Banking Services</h2>
              </a>
              </div>
              <div class="col-md-3 ml-auto">
                <h2 class="footer-heading mb-4">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="viewCustomers" class="smoothscroll list-unstyled">Make Transaction</a></li>
                  <li><a href="transactionHistroy" class="smoothscroll">Transaction History</a></li>
                  <li><a href="/BharatBankingServices/home#aboutus" class="smoothscroll">About Us</a></li>
                  <li><a href="#contact-section" class="smoothscroll">Contact Us</a></li>
                  <li><a href="#about-section" class="smoothscroll list-unstyled">Terms</a></li>
                  <li><a href="#about-section" class="smoothscroll list-unstyled">Policy</a></li>
                </ul>
              </div>
              <div class="col-md-3 footer-social">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <div class="d-flex justify-content-evenly">
                	<a href="#" class="col-auto"><img src="img/facebook-icon.png"></img></a>
					<a href="#" class="col-auto"><img src="img/twitter-icon.png"></img></a>
					<a href="#" class="col-auto"><img src="img/instagram-icon.png"></img></a>
                </div>
                <div class="d-flex justify-content-evenly my-2">
                	<a href="#"><img src="img/app-store.png" width="137px" height="40px"></img></a>
                </div>
                <div class="d-flex justify-content-evenly my-2">
                	<a href="#"><img src="img/play-store.png"width="137px" height="40px"></img></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <h2 class="footer-heading mb-4">Subscribe Newsletter</h2>
            <form action="#" method="post" class="footer-subscribe">
              <div class="input-group mb-3 d-flex flex-wrap">
                <div class="col-9">
                	<input type="text" class="form-control border-secondary  text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                </div>
                <div class="col-2" style="margin-left:10px;">
                  <button class="btn btn-primary text-black border-start-0 border-end-0 border-bottom-0 border-top-0" type="button" id="button-addon2">Send</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-2 mt-2 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
              <p class="copyright">
              	<small>
           		 Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
           		</small></p>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>