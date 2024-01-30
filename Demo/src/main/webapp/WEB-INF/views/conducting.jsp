<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conducting</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="resources/css/style.css">
<style type="text/css">
footer{
	position: fixed;
	bottom: 0;
}
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
	
	<div class="about1">
		<!-- <h2>About Us</h2> -->
		<h3 class="classic-title">
				<span>Conducting</span>
		</h3>
		<div>
		<img class ="pageimg" src="resources/image/conducting.png"><br><br>
			<div class ="para">
			<p>A tube used to protect and route electrical wiring in a building or structure is known as an electrical conduit</p>
			<p>Metal, plastic, Fiber, or fired clay can all be used to make electrical conduit.</p>
			<p>Most conduit is rigid, but flexible conduit is used for certain applications.</p>
		</div>
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
