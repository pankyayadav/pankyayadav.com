<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<style type="text/css">
 /* li {
  display: inline-block;
  margin: 0 10px;
  
}  */

/* #socialIcon{
	 display: inline-block;
  margin: 0 10px;
  	
} */
footer{
	position: fixed;
	bottom: 0;
}
</style>	
</head>
<body>
	<header>
		<!-- <img src="resources/image/logo1.jpg"> -->
		<nav>
    <div class="container1">
      <div class="log">
        <img src="resources/image/logo1.jpg" width="100" height="50">
      </div>
      <div class="toggle" onclick="toggleMenu()">&#9776;</div>


      <ul class="menu" id="menu1">
        <li><a href="/Demo/home">Home</a></li>
        <!-- <hr class="solid"> -->
        <li><a href="#">Services</a>
         <ul class="submenu">
        		<li><a href="/Demo/commissioning">Commissioning</a></li>
        		<li><a href="/Demo/conducting">Conducting</a></li>
        		<li><a href="/Demo/cablesDetails">Installing Cables</a></li>
        		<li><a href="/Demo/maintenance">Electrical Maintenance</a></li>
        		<li><a href="/Demo/panelWork">Panel Work</a></li>
        	</ul>
        </li>
        <!-- <hr class="solid"> -->
         <li><a href="/Demo/team">Team</a></li>
        <!-- <hr class="solid"> -->
        <li><a href="/Demo/client">Client</a></li>
        <!-- <hr class="solid"> -->
        <li><a href="/Demo/about">About</a></li>
        <!-- <hr class="solid"> -->
        <li><a href="/Demo/contact">Contact</a></li>
        <!-- <hr class="solid"> -->

      </ul>
    </div>
  </nav>
	</header>
<body>
	<div id="container">
		<div id="content">
			<div class="container">
				<div class="col-md-8">
					<h4 class="classic-title">
						<span>Contact Us</span>
					</h4>

					<form role="form" class="contact-form" id="contact-form"
						action="Mail" method="post">
						<div class="form-group">
							<div class="controls">
								<input type="text" placeholder="Name" name="name">
							</div>
						</div>
						<div class="form-group">
							<div class="controls">
								<input type="email" class="email" placeholder="Email"
									name="email">
							</div>
						</div>
						<div class="form-group">
							<div class="controls">
								<input type="text" class="requiredField" placeholder="Subject"
									name="subject">
							</div>
						</div>
						<div class="form-group">
							<div class="controls">
								<textarea rows="7" placeholder="Message" name="message"></textarea>
							</div>
						</div>
						<button type="submit" id="submit" name='submit' class="button">Send</button>
						<div id="success" style="color: #34495e;"></div>
					</form>
				</div>

			 	<!-- <div class="col-md-4">
					<h4 class="classic-title">
						<span>Address</span>
					</h4>
					<b>Test Enterprises Pvt Ltd</b>

					<div class="hr1" style="margin-bottom: 10px;"></div>
					<ul class="icons-list">
						<li><i class="fa fa-globe"> </i> <strong>Address:</strong>
							000, Test Test, Road No.250,
							<div style="margin-left: 110px;">Test Test, Thane,
								Mumbai,</div>
							<div style="margin-left: 110px;">Maharashtra - 400604.</div>
							<br> <li><i class="fa fa-envelope"></i> <strong>Email:</strong> info@gmail.com</li>

								<li><i class="fa fa-mobile"></i> <strong>Phone:</strong>
									+91 0000000000</li>
					</ul>
				</div> --> 
			</div>
		</div>
	</div>
	<!-- Start Footer Section -->
	<div class="Text">
		<ul class="socialMedia">
		<li id="socialIcon"><a href="#" class="fa fa-facebook"></a></li>
		<li id="socialIcon"><a href="#" class="fa fa-twitter"></a></li>
		<li id="socialIcon"><a href="#" class="fa fa-instagram"></a></li>
		<li id="socialIcon"><a href="#" class="fa fa-linkedin"></a></li>
		</ul>
	</div>
	<footer>
		<!-- <div class="container1">
			<div class="copyright-section">
				<div class="row"> -->
					<div class="col-lg-12">
						<p>&copy; 2018 Test Enterprises - ALL RIGHTS RESERVED</p>
					</div>
				<!-- </div>
			</div>
		</div> -->
	</footer>
	<div id="loader">
		<div class="spinner">
			<div class="dot1"></div>
			<div class="dot2"></div>
		</div>
	</div>
<script>
function toggleMenu() {
	console.log('test');
      var menu = document.querySelector(".menu");
      menu.classList.toggle("active");
    }
</script>	
</body>
</html>