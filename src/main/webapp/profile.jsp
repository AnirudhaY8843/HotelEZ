<%@page import="model.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./profile.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="shortcut icon" href="./images/favicon1.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

	<style type="text/css">
	body{
		height: 80vh;
		width: 100vw;
		position: relative;
	}
	.container{
		height:80vh;
		width:50vw;
		position:absolute;
		top:50%;
		left:50%;
		transform:translate(-50%,-50%);
	}
	.card{
		display: flex;
		align-items: center;
		justify-content: flex-start;
		flex-direction: column;
		gap:15px;
	}
	
	.email, .contact{
		font-size: 18px;
		color:var(--black);
	}
	
	.im{
		display: flex;
		flex-direction: column;
		gap:10px;
	}
		.button{
		font-size: 16px;
		font-weight: 600;
	}
	
	.btn{
		padding:5px 8px;
	}

	#file{
		background-color:var(--green);
		border-radius:5px;
		color:var(--black);
		font-size: 16px;
	}
	
	.logfirst{
		margin-top: 40vh;
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
        <a class="" href="index.jsp#home">Home</a>
        <a  class="" href="index.jsp#dishes">dishes</a>
        <a  class="" href="index.jsp#about">about</a>   
        <a class=""  href="review">review</a>
        <a  class="" href="index.jsp#order">order</a>
        <a  class="" href="login.jsp">login</a>
    </nav>
     <!-- navbar -->
    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="#" class="fas fa-heart"></a>
        
        <a href="profile" class="fa-solid fa-user active"></a>
       
    </div>

</header>

<!-- Header Ends -->

<!-- search form -->

<form action="" id="search-form">
    <input type="search" placeholder="search" name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>


<!-- Login Form -->


<%

	ArrayList<UserDTO> user=new ArrayList();
    		user=(ArrayList<UserDTO>)request.getAttribute("user");
    			if(user!=null && !user.isEmpty()){
    		for(UserDTO data:user){
    		
%>
<div class="container">
    <div class="card">
      <div class="profile-picture">
        <a href="DisplayImageServlet"><img src="./images/user-img.png" id="profileImage" alt="Profile Picture"></a>
      </div>
     <%-- <form action="UploadImageServlet" class="im" method="post" enctype="multipart/form-data">
      	<label for="file">Update Image</label>
      	<input type="file" name="file" id="file" accept=".jpg, .jpeg, .png" value="select">
      	<input class="button btn" type="submit" value="Upload Image">
      </form>
      --%> 
      <h2 class="name"><%=data.getFullName() %></h2>
      <h3 class="username">username : @<%=data.getUserName() %></h3>
      <p class="contact">Contact : <%=data.getContact() %></p>
      <p class="email">Email : <%=data.getEmail() %></p>
      <a href="logout" class="button">logout</a>
      
    </div>
</div>
<%}
    		
    			%>
    		<%}else{ 
    		%>
    		<h1 class="logfirst">Please Login first....</h1>
    		<%} %>
</body>

</html>