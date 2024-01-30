<!-- <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <title>Electrical Engineer Website</title>
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
<style>
body {font-family: Arial, open-button, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width textarea */
.form-container textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;
}

/* When the textarea gets focus, do something */
.form-container textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

.hero {
  background-image: url("resources/image/dummy.jpeg");
  background-size: cover;
  height: 500px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.hero-text {
  text-align: center;
  color: white;
}

.hero-text h1 {
  font-size: 48px;
}

.hero-text button {
  background-color: #f44336;
  color: white;
  border: none;
  padding: 12px 24px;
  font-size: 16px;
  cursor: pointer;
  border-radius: 4px;
}
/* CSS */
.services {
  padding: 50px;
  text-align: center;
}

.services h2 {
  font-size: 36px;
  margin-bottom: 20px;
}

.services ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
}

.services li {
  margin: 10px;
  padding: 10px;
  background-color: #f2f2f2;
  border-radius: 4px;
  width: 200px;
}

/* Global styles */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: Arial, sans-serif;
}

.container {
  max-width: 960px;
  margin: 0 auto;
}

/* Navigation bar styles */
nav {
  background-color: #333;
  color: #fff;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 9999;
}

.logo a {
  color: #fff;
  font-weight: bold;
  font-size: 24px;
  text-decoration: none;
}

.menu {
  display: flex;
  list-style: none;
}

.menu li {
  display: inline-block;
  margin-left: 20px;
}

.menu li a {
  display: block;
  padding: 10px;
  color: #fff;
  text-decoration: none;
}

.toggle {
  display: none;
  cursor: pointer;
}

@media screen and (max-width: 768px) {
  .menu {
    display: none;
    position: absolute;
    top: 60px;
    left: 0;
    width:
    }
    }
.chat-icon {
  position: fixed;
  bottom: 20px;
  right: 20px;
 width: 100px;
  height: 100px;
}

/* Hide the chatbot container by default */
.chatbot-container {
  display: none;
  position: fixed;
  bottom: 70px;
  right: 20px;
  width: 100px;
  height: 100px;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  overflow: auto;
}

.log{
 text-align: left;
  color: white;
  background: #1176b3;
   font-size: 20px;
  border: none;
  
  margin-top: -20px;
  margin-right: -40px;
  border-radius: 2px;
    border-radius: 5px;
    margin: 0px 90px;
    position: absolute;
    right: -70px;
  top: 1px;
  margin: right;
  position: right;
  float: left;
 
}
</style>
</head>
<body>

 <header>
  <nav>
      <div class="container">
        <div class="log">
        <a href="submit"><button class="log">Logout</button></a>
        <img src="resources/image/logo1.jpg" width = "100" height = "50">
        </div>
        <ul class="menu">
          <li><a href="#">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
        <div class="toggle" onclick="toggleMenu()"><i class="fas fa-bars"></i></div>
      </div>
    </nav>
  <img src="resources/image/Logo.jpg" alt="Logo">
</header>

  <section class="hero">
  <div class="hero-text">
    <h1>Welcome to my Electrical Engineering Website</h1>
    <p>Explore our services and get in touch with us today.</p>
    <button>Get Started</button>
  </div>
</section>
<section class="services">
  <h2>Our Services</h2>
  <ul>
    <li>Electrical Design and Planning</li>
    <li>Electrical Installations and Repairs</li>
    <li>Electrical Testing and Inspections</li>
    <li>Lighting Design and Installation</li>
    <li>Home Automation Systems</li>
  </ul>
</section>

<button class="open-button" onclick="openForm()"></button>
<img class="chat-icon" src="resources/image/chat.png" onclick="openForm()" alt="Chat icon">

<div class="chat-popup" id="myForm">
  <form action="Chat" class="form-container" method="post">
    <h1>Chat</h1>

    <label for="msg"><b>Message</b></label>
    <textarea placeholder="Type message.." name="msg" required></textarea>

    <button type="button" class="btn">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>

<div class="chatbot-container">
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
</div>

<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>

<script>
      function toggleMenu() {
        var menu = document.querySelector(".menu");
        menu.classList.toggle("active");
      }
      
      
    </script>

</body>
</html>
 -->