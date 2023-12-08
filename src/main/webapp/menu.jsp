<%@page import="model.MenuDTO"%>
<%@page import="java.util.ArrayList"%>
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
    <style type="text/css">
    .menu{
    	margin-top: 10vh;
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
        <a  class="" href="#dishes">dishes</a>
        <a  class="" href="#about">about</a>   
        <a class=""  href="review">review</a>
        <a class=""  href="menu" >Menu</a>
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


    <section class="menu" id="menu">
        <h3 class="sub-heading">our menu</h3>
        <h1 class="heading">Veg Menu</h1>
    
        <div class="box-container">
           <%
           ArrayList<MenuDTO> menu=new ArrayList<MenuDTO>();
           	menu=(ArrayList)request.getAttribute("menu");
           	for(MenuDTO data:menu){
           	
           %>
            <div class="box">
                <form action="order" method="post">
                <div class="image">
                    <img src="./images/menu-1.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3><%=data.getFoodName() %></h3>
                    <p><%=data.getDescription() %>.</p>
                    <%
                     session.setAttribute("name", data.getFoodName()); 
                    	session.setAttribute("price", data.getPrice());
                    %>
                    <span class="price">&#8377;<%=data.getPrice() %></span>
                    <input type="hidden" name="foodName" value="<%=data.getFoodName()%>">
                    <input type="hidden" name="description" value="<%=data.getDescription()%>">
                    <input type="hidden" name="price" value="<%=data.getPrice()%>">
                    <input class="btn" type="submit" value="Order">
                    
                </div> 
            </form>
            </div>
            <%} %>
            </div>
        </section>
        
        <section class="menu" id="menu">
        <h3 class="sub-heading">our menu</h3>
        <h1 class="heading">Non-Veg Menu</h1>
       
    
        <div class="box-container">
           <%
           ArrayList<MenuDTO> nonvegMenu=new ArrayList<MenuDTO>();
           	nonvegMenu=(ArrayList)request.getAttribute("nonveg");
           	for(MenuDTO data:nonvegMenu){
           	
           %>
            <div class="box">
                <form action="order" method="post">
                <div class="image">
                    <img src="./images/menu-1.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3><%=data.getFoodName() %></h3>
                    <p><%=data.getDescription() %>.</p>
                    <%session.setAttribute("name", data.getFoodName()); 
                    	session.setAttribute("price", data.getPrice());
                    %>
                    <span class="price">&#8377;<%=data.getPrice() %></span>
                    <input type="text" name="foodName" value="<%=data.getFoodName()%>">
                    <input type="text" name="description" value="<%=data.getDescription()%>">
                    <input type="text" name="price" value="<%=data.getPrice()%>">
                    <input class="btn" type="submit" value="Order">
                   
                </div> 
            </form>
            </div>
            <%} %>
            </div>
        </section>
</body>
</html>