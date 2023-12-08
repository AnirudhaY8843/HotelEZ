<%@page import="model.ReviewDTO"%>
<%@page import="model.ReviewDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="./images/favicon1.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  
  <style type="text/css">
  .review{
  	margin-top:20vh;
  }
  
  .str{
  	padding-left:50px;
  	display: flex;
  	flex-direction:row;
  	align-items: center;
  	gap:20px
  }
  .str i{
  font-size: 1.7rem;
  color: var(--green);
}
	.inputBox{
		width:100%
	}
	input[type=radio]{
	color: var(--green);
	}
  </style>
    <title>HotelEZ</title>
</head>

<body>

<%

	ArrayList<ReviewDTO> review=new ArrayList();
	review=(ArrayList)request.getAttribute("review");
	
	
%>
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
        <a class="active"  href="menu">menu</a>
        <a  class="" href="menu">order</a>
        <a  class="" href="./login.jsp">login</a>
    </nav>
     <!-- navbar -->
    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="#" class="fas fa-heart"></a>
        <%
        if(session!=null) {
        %>
        <a href="profile" class="fa-solid fa-user"></a>
        <%} %>
    </div>

</header>

<!-- Header Ends -->

<!-- search form -->

<form action="" id="search-form">
    <input type="search" placeholder="search" name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>
		
		

<section class="review" id="review">

    <h3 class="sub-heading">Reviews</h3>
    <h1 class="heading">what they think</h1>

    <div class="swiper-container review-slider">

        <div class="swiper-wrapper">

<%	
if(review!=null){
for(ReviewDTO data: review){ 
		int stars = data.getStars();
%>
            <div class="swiper-slide slide">
                <i class="fas fa-quote-right"></i>
                <div class="user">
                    <img src="https://cdn-icons-png.flaticon.com/512/3177/3177440.png" alt="">
                    <div class="user-info">
                        <h3><%=data.getUsername() %></h3>
                        <div class="stars">
        				<%	for (int i=0;i<stars;i++) { %>
                            <i class="fas fa-star"></i>
                  		<% }%>	
                        </div>
                    </div>
                </div>
                <p><h1><%=data.getReview()%></h1></p>
            </div>
            
  
<%}}else{%>
	<h1>No Review Available</h1>
<%}%> 
        </div>
    </div>

</section>


<!-- review ends -->
<!-- order section -->
<section class="order" id="order">

    <h3 class="sub-heading">Send Us Review</h3>
    <h1 class="heading">We can improve ourself</h1>

    <form action="setreview" method="get">

        <div class="inputBox">
            <div class="input">
                <span>your name</span>
                <input type="text" name="name" placeholder="Enter your name" id="">
            </div>
            <div class="input stars">
                <span>Rate us</span>
                <div class="str">
                <div class="set">
                <i class="fas fa-star">1</i>
                <input type="radio" name="stars" value="1" placeholder="Enter your number" id="">
                </div>
                <div class="set">
                <i class="fas fa-star">2</i>
                <input type="radio" name="stars" value="2"placeholder="Enter your number" id="">
                </div>
                <div class="set">
                <i class="fas fa-star">3</i>
                <input type="radio" name="stars" value="3" placeholder="Enter your number" id="">
                </div>
                <div class="set">
                <i class="fas fa-star">4</i>
                <input type="radio" name="stars"  value="4" placeholder="Enter your number" id="">
                </div>
                <div class="set">
                <i class="fas fa-star">5</i>
                <input type="radio" name="stars" value="5" placeholder="Enter your number" id="">
                </div>
            </div>
        </div>

        <div class="inputBox">
            <div class="input">
                <span>Send your Review</span>
                <textarea name="review" id="review" placeholder="Enter msg here" cols="30" rows="15"></textarea>
            </div>
        </div>
        <div class="submit">
        <input type="submit" value="Send Review" class="btn">
    </div>
    </form>

</section>




<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- embedded script -->
<script src="script.js">


</script>

</body>
</html>