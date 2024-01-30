<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<!-- <link rel="stylesheet" href="resources/css/home.css"> -->
<style>
body {
	font-family: Arial, open-button, sans-serif;
}

* {
	box-sizing: border-box;
}

header img {
	height: 80px;
	margin-left: 40px;
}

body {
	height: 100vh;
	/*  background-image: url("resources/image/dummy.jpeg"); */
	background-size: cover;
	font-family: sans-serif;
	margin-top: 80px;
	padding: 30px;
}

header {
	background-color: white;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 80px;
	display: flex;
	align-items: center;
	box-shadow: 0 0 25px 0 black;
}

header * {
	display: inline;
}

header li {
	margin: 20px;
}

header li a {
	color: black;
	text-decoration: none;
}

 .about{
	background-color: #f2f2f2;
	border-radius: 5px;
	padding: 20px;
	flex-wrap: wrap;
	padding: 17px 0 26px;
	
} 
footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
  /* height: 30px; */
}
.about h2{
	font-size: 40px;
}
.about p{
	font-size: 20px;
}
footer p {
	font-size: 10px;
}
/* @media (min-width: 768px){ */
@media screen and (max-width: 768px){	
footer {
    min-height: 30px;
    padding: 15px 0 20px;
}
footer p {
	color : white;
	font-size: 10px;
	text-align: center;
}
footer {
    padding: 17px 0 26px;
}
.about{
    font-size: 20px;
    text-align: center;
    width:100%;
}
.about h2{
	font-size: 60px;
}
.about p{
	font-size: 40px;
}
footer p {
	font-size: 25px;
}
}

	
</style>
</head>
<body>
	<header>
		<img src="resources/image/logo1.jpg">
		<nav>
			<ul>
				<li><a href="home">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="#">Pricing</a></li>
				<li><a href="#">Terms of use</a></li>
				<li><a href="contact">Contact</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Careers</a></li>
			</ul>

		</nav>
	</header>
	
	<div class="about">
	<h2>About Us</h2>
	<div>
	
	<p>We are the king of  business</p>
	<p>Awarded by so much things</p>
	</div>
</div>

<footer>
		<!-- <div class="container1">
			<div class="copyright-section">-->
				
					<div class="col-lg-4">
						<p>&copy; 2018 Test Enterprises - ALL RIGHTS RESERVED</p>
					</div>
			<!-- </div>
		</div> -->
	</footer>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<style type="text/css">
/* footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%; 
	background-color: black;
	color: white;
	text-align: center;
} */
footer{
	position: fixed;
	bottom: 0;
}
/* @media screen and (max-width: 768px) {
footer {
	position: relative;
}
} */
</style>
</head>
<body>
	<header>
	<!-- 	<img src="resources/image/logo1.jpg">
		<nav>
			<ul>
				<li><a href="home">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="#">Pricing</a></li>
				<li><a href="#">Terms of use</a></li>
				<li><a href="contact">Contact</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Careers</a></li>
			</ul>
		</nav> -->
		
		 <nav>
<!--     <div class="container1">
      <div class="log"> -->
        <img src="resources/image/logo1.jpg" width="100" height="50">
      <!-- </div> -->
      <div class="toggle" onclick="toggleMenu()">&#9776;</div>


      <ul class="menu" id="menu1">
        <li><a href="/Demo/home">Home</a></li>
        <!-- <hr class="solid"> -->
        <li><a href="#">Services<!-- <i class="fa fa-caret-down" aria-hidden="true"></i> --></a>
        <!-- <span style="color:black;font-size: 12px;font-weight: normal;">&#9660;</span></a> -->
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
	
	<div class="about1">
		<!-- <h2>About Us</h2> -->
		<h2 class="classic-title">
				<span>About Us</span>
		</h2>
		<div>
			<!-- <p>We are the king of business</p>
			<p>Awarded by so many things</p> -->
			<p>One of the most significant gifts that science has bestowed
				upon humanity is electricity. It has also ingrained itself into
				Morden culture, and it is impossible to imagine a world without it.
				Here, a SULOCHANA ENTERPRISE employee assists in offering a
				sustainable and safe electrical work solution to maintain the
				happiness and safety of your modern life. High-quality services are
				provided to clients by the company's experienced and moral staff
				members that work in the same industry.</p>
			<p>Our services cover a wide range of tasks, including
				engineering, installing, commissioning, conduiting, installing LT&HT
				cables, meter room repairs, panel installation, forthcoming
				projects, and operating and maintaining current projects.</p>
			<p>The corporation provides electrical supplies for commercial,
				industrial, and residential complexes, as well as
				telecommunications. To improve the project, our staff members would
				like to impart their knowledge and experience to our client.</p>
			<p>The products and services are carefully picked to fit our
				client's vision. Our staff puts a lot of effort into using their
				expertise to complete your ideal project. Our mission is to deliver
				an economical and sustainable electrical solution with the highest
				quality materials and complete safety for all precious clie</p>
		</div>
	</div>

	<footer>
		<div class="col-lg-12">
			<p>&copy; 2018 Test Enterprises - ALL RIGHTS RESERVED</p>
		</div>
	</footer>

<script>
function toggleMenu() {
	console.log('test');
      var menu = document.querySelector(".menu");
      menu.classList.toggle("active");
    }
</script>	
</body>
</html>
