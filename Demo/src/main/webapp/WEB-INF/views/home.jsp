<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <title>Home</title>
         <link rel="stylesheet" href="resources/css/style.css">
       <!--  <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<style type="text/css">

/* .submenu li a{
     display: block; 
     color: #666; 
     font-size: 13px; 
     font-family: 'Open Sans', sans-serif; 
     padding: 11px 16px; 
     text-decoration: none; 
     text-transform: capitalize; 
     transition: padding 0.2s ease-in-out; 
    -moz-transition: padding 0.2s ease-in-out;
    -webkit-transition: padding 0.2s ease-in-out;
         color: #ff491d;
         box-sizing: border-box;
         position: relative;
    border-top: 1px solid rgba(0, 0, 0, 0.04);
    } */
</style>
    </head>
    <body>
       <header>
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
       <!--  <div class="container">   -->   
        <section class="hero12">
   
 <!--  <div class="hero-text"> -->
    <!-- <h1>Welcome to Sulochana Enterprises</h1>
    <p>Explore our services and get in touch with us today.</p> -->
    <!-- <div class="slideshow-container"> -->
<div class="sliders">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <!-- <img src="resources/image/s1.jpg" style="width:100%"> -->
  <div class="text">
  <center><h1>Welcome to Test Enterprises</h1></center></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <!-- <img src="resources/image/s2.jpg" style="width:100%"> -->
  <div class="text">
   <center><h1>Welcome to Test Enterprises</h1></center></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <!-- <img src="resources/image/shock.jpg" style="width:100%"> -->
  <div class="text">
   <center><h1>Welcome to Test Enterprises</h1></center></div>
</div>
</div>
<!-- </div> -->
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
  <!-- </div> -->
  
</section>

<%-- <img class="chat-icon" src="<%= request.getContextPath() %>/resources/image/chat3.png" onclick="openForm()" alt="Chat icon"> --%>

<!-- <div class="chat-popup" id="myForm">
  <form action="Chat" class="form-container" method="post">
    <h1>Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." name="msg" id="msg" required></textarea>

    <button type="button" class="btn" onclick="sendMessage()">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div> -->

<div class="chat-popup" id="myForm">
<div class="chat-container">
<!-- <form action="Chat" class="form-container" method="post"> -->
    <h1>Chat</h1>
        <div id="chat-display"></div>
        <div class="input-container">
            <input type="text" id="msg" placeholder="Type a message...">
            <button onclick="sendMessage()">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
                <div id="overlay">
        <!-- <div id="dialog-box">
            <p>Do you want to start a new chat session?</p>
            <button onclick="confirmUserExists(true)">Yes</button>
            <button onclick="confirmUserExists(false)">No</button>
        </div> -->
    </div>
            
        </div>
        <!-- </form> -->
    </div>
  </div>
</div>
<br>
<div class="about">
	<h2>About Us</h2>
	<div>
	
	<p>We are the king of business</p>
	<p>Awarded by so much things</p>
	<!-- <a href="/Demo/about" class = "slider btn btn-system btn-large" > Know More </a> -->
	<a style="text-decoration:none" href="/Demo/about" class = "slider btn btn-system btn-large" > Know More </a>
	</div>
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


<!-- <div class="chatbot-container">
  <div class="chat-header">
    <h3>Chatbot</h3>
  </div>
  <div class="chat-body">
    <div class="chat-message">
      <p>Hello! How can I assist you today?</p>
    </div>
  </div>
  <div class="chat-footer">
    <input type="text" placeholder="Type your message...">
    <button>Send</button>
  </div>
</div> -->

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}


function showOverlay() {
    document.getElementById("overlay").style.display = "block";
}

function hideOverlay() {
    document.getElementById("overlay").style.display = "none";
}

/* function confirmUserExists(userExists) {
    hideOverlay();
    if (userExists) {
        chatStarted = true;
        sendMessage("Hello");
    }
} */
function sendMessage() {
    var userInput = document.getElementById("msg").value;
    var chatDisplay = document.getElementById("chat-display");
    
    if (userInput !== "") {
        appendMessage("You: " + userInput);
        
        // Send user input to the server for processing
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                var botResponse = this.responseText;
                appendMessage("Chatbot: " + botResponse);
            }
        };
        xhttp.open("POST", "Chat", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("userInput=" + userInput);
        
        document.getElementById("msg").value = "";
    }
}

function appendMessage(message) {
    var chatDisplay = document.getElementById("chat-display");
    chatDisplay.innerHTML += "<p>" + message + "</p>";
    chatDisplay.scrollTop = chatDisplay.scrollHeight;
}

</script>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<script>
function toggleMenu() {
	console.log('test');
      var menu = document.querySelector(".menu");
      menu.classList.toggle("active");
    }
</script>
    </body>
</html>