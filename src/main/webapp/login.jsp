<!DOCTYPE html>
<%@page import="model.UserDTO"%>
<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="./login.css">
    <style type="text/css">
    	.err{
    		color: red;
    		font-size: 12px;
    		text-align: center;
    	}
    </style>
    <title>HotelEZ</title>
</head>

<body>

</body>
<header>

    <!-- Header Starts -->
    <!-- logo -->
    <a href="#" class="logo"><i class="fas fa-utensils"></i>HotelEZ.</a>
    <!-- logo -->
    <!-- navbar -->
    <nav class="navbar">
        <a href="index.jsp">Home</a>
        <a href="index.jsp#dishes">dishes</a>
        <a href="index.jsp#about">about</a>
        <a href="index.jsp#menu">menu</a>
        <a href="review">review</a>
        <a href="index.jsp#order">order</a>
        <a class="active" href="login.jsp">login</a>
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

<div class="login">
    <form action="login" method="post">
        <h2>Login To HotelEZ</h2>
        <%
        String msg=(String)request.getAttribute("errorMsg");
    		%>
    	<c:if test="${not empty requestScope.errorMsg}">
        <p class="err">${requestScope.errorMsg }</p>
    	</c:if>
    	
        <div class="ip">
            <div class="inputs">
                <input type="text" name="username" id="usename" placeholder="Username">
            </div>
            <div class="inputs">
                <input type="password" name="password" id="password" placeholder="Password">
            </div>
            <div class="submit">
                <input class="btn" type="submit" value="Log in">
            </div>
            
        </div>
        <div class="forgot">
            <a href="#"><span>forgot password ?</span></a>
            <a href="./signup.html">New user? signup</a>
        </div>
    </form>
</div>


<script>
	
</script>
</body>

</html>