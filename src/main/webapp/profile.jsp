<%@page import="model.OrderDTO"%>
<%@page import="java.util.Base64"%>
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
		height: 5vh;
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
	
	.file-input-wrapper {
            position: relative;
            overflow: hidden;
            display: inline-block;
        }

        .file-input-wrapper input[type=file] {
            font-size: 100px;
            position: absolute;
            left: 10px;
            top: 0;
            opacity: 0;
        }

        .file-input-label {
            display: inline-block;
            padding: 8px 16px;
            background-color: #3498db;
            color: #fff;
            font-size:16px;
            border-radius: 4px;
            cursor: pointer;
        }
       
       .dishes{
       	margin-top: 100vh;
       	position: absolute;
       	width:100vw;
       }n
       .box-container{
       	display: grid;
       	grid-template-columns:1fr 1fr 1fr;
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
        <a  href="menu">menu</a>
        <a  class="" href="menu">order</a>
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

<form action="" id="search-form" method="get">
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
        <a href="profile">
       <% if (data.getImage() != null) { %>
            <img src="data:image/jpeg;base64,<%= new String(Base64.getEncoder().encode(data.getImage())) %>" id="profileImage" alt="Profile Picture">
        <% } else { %>
            <img src="./images/user-img.png" id="profileImage" alt="Default Profile Picture">
        <% } %>
        
        </a>
      </div>
 
 	 <form action="UploadImageServlet" class="im" method="post" enctype="multipart/form-data">
 	 <div class="file-input-wrapper">
      	<label class="file-input-label" for="file">choose file
      		<input type="file" name="file" id="file" accept=".jpg, .jpeg, .png" value="select">
      	</label>
      	</div>
      	<input class="button btn" type="submit" value="Upload Image">
      </form>

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
    		response.sendRedirect("profile.jsp");
    		<%} %>
    		
   <section class="dishes" id="dishes">
    <h3 class="sub-heading"> Orders</h3>
    <h1 class="heading">Have a good food</h1>

	
    <div class="box-container">
    		<%
    		ArrayList<OrderDTO> order=new ArrayList<OrderDTO>();
    		order=(ArrayList<OrderDTO>)request.getAttribute("orders");
    		if(order!=null){
    		for(OrderDTO data:order){
    		%>
        <div class="box">
             <h3>Order Id : <%=data.getOrderId() %></h3>
            <h3>Dish : <%=data.getFoodName() %></h3>
            <h1>Price : &#8377; <%=data.getPrice() %></h1>
            <h1>order Adress : <%=data.getAdress() %></h1>
            <h1>No .of Dishes : <%=data.getNoOfDish() %></h1>
           
            
            <span>
               <h1>Total Bill :  &#8377;<%=data.getPrice()*data.getNoOfDish() %></h1>
            </span>
          <form action="cancel" method="get">
          	<input type="hidden" name="orderid" value="<%=data.getOrderId()%>">
          	<input class="btn" type="submit" value="cancel Order">
          </form>
        </div>
      
    		<%}}
    		%>
    		
      </div>
</section>
    	<%--	<script>
        // Function to fetch and set the image source
        function displayProfileImage() {
        	<%String username=(String)session.getAttribute("username"); %>
            // Assuming the user ID is 1 (replace with your user identification logic)
            var userId = username;

            // Construct the URL of the DisplayImageServlet with the user ID
            var imageUrl = "profile?username=" + username;

            // Set the image source
            document.getElementById("profileImage").src = imageUrl;
        }

        // Call the function when the page loads
        window.onload = displayProfileImage;
        
    </script>
    --%>
</body>

</html>