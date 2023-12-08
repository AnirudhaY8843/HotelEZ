<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="./images/favicon1.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./signup.css">
    <style type="text/css">
    	.err{
    		color: red;
    		font-size: 12px;
    		text-align: center;
    	}
    	
    	.err-1{
    		margin-top:80px;
    		color: red;
    		font-size: 20px;
    		text-align: center;
    	}
    </style>
    <title>HotelEZ</title>
</head>

<body>
<header>

    <!-- Header Starts -->
    <!-- logo -->
    <a href="#" class="logo"><i class="fas fa-utensils"></i>HotelEZ.</a>
    <!-- logo -->
    <!-- navbar -->
    <nav class="navbar">
        <a  href="index.jsp">Home</a>
        <a  href="#dishes">dishes</a>
        <a  href="#about">about</a>
        <a  href="menu">menu</a>
        <a  href="review">review</a>
        <a  href="#order">order</a>
        <a  href="./login.jsp">login</a>
    </nav>
    <!-- navbar -->
    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="#" class="fas fa-heart"></a>
        <a href="profile" class="fa-solid fa-user"></a>
    </div>

</header>

<!-- Header Ends -->

<!-- search form -->

<form action="search" method="post" id="search-form">
    <input type="search" placeholder="search" name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>

<!-- Login Form -->

<%
        String msg1=(String)request.getAttribute("loginmsg");
    		%>
    		
    	<c:if test="${not empty requestScope.loginmsg}">
        <h1 class="err-1">${requestScope.loginmsg }</h1>
    	</c:if>

<div class="signup">
    <form action="signup" method="post">
        <h2>Create Account</h2>
        <div class="ip">
        	<div class="inputs">
                <input type="text" name="fullname" id="fullname" placeholder="Full Name">
            </div>
            <div class="inputs">
                <input type="text" name="username" id="usename" placeholder="Username">
            </div>
            <div class="inputs">
                <input type="email" name="email" id="email" placeholder="Email">
            </div>
           
            <div class="inputs">
                <input type="tel" name="contact" id="contact" placeholder="Contact">
            </div>
            
             <div class="inputs">
                <input type="password" name="password" id="password" placeholder="Password">
            </div>
          
            <div class="inputs">
                <input type="password" name="cpassword" id="cpassword" placeholder="Confirm Password">
            </div>
            
        </div>
        <div class="submit">
            <input class="btn" type="submit" value="Sign Up">
        </div>
        <div class="forgot">
            <a href="./login.jsp">Already have an account ? Login</a>
        </div>
    </form>
</div>


<script>
        document.addEventListener("DOMContentLoaded", function () {
            const form = document.querySelector('form');

            form.addEventListener('submit', function (event) {
                let valid = true;

                // Full Name validation
                const fullName = document.getElementById('fullname');
                if (!fullName.value.trim()) {
                    valid = false;
                    alert('Please enter your Full Name');
                }

                // Username validation
                const username = document.getElementById('username');
                if (!username.value.trim()) {
                    valid = false;
                    alert('Please enter a Username');
                }

                // Email validation
                const email = document.getElementById('email');
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!email.value.trim() || !emailRegex.test(email.value.trim())) {
                    valid = false;
                    alert('Please enter a valid Email address');
                }

                // Contact validation
                const contact = document.getElementById('contact');
                if (!contact.value.trim()) {
                    valid = false;
                    alert('Please enter your Contact number');
                }

                // Password validation
                const password = document.getElementById('password');
                if (!password.value.trim()) {
                    valid = false;
                    alert('Please enter a Password');
                }

                // Confirm Password validation
                const confirmPassword = document.getElementById('cpassword');
                if (confirmPassword.value.trim() !== password.value.trim()) {
                    valid = false;
                    alert('Passwords do not match');
                }

                if (!valid) {
                    event.preventDefault(); // Prevent form submission if validation fails
                }
            });
        });
    </script>
</body>

</html>