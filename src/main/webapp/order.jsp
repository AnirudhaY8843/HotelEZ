
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
<%
	String name=(String)request.getAttribute("name");;
	double price=(double)request.getAttribute("price");
%>


 <section class="order" id="order">

    <h3 class="sub-heading">Order now</h3>
    <h1 class="heading">free and fast</h1>

    <form action="checkorder" method="get">
			
        <div class="inputBox">
            <div class="input">
                <span>Enter No. of Dishes</span>
                <input type="number" name="noofdish" placeholder="" id="noofdishes">
            </div>
            
        </div>

       <input type="hidden" name="name" value="<%=name%>">
       <input type="hidden" name="price" value="<%=price%>">
        
        <div class="inputBox">
            <div class="input">
                <span>adress</span>
                <textarea name="adress" id="adress" placeholder="Enter your adress" cols="30" rows="10"></textarea>
            </div>
        </div>
        <div class="submit">
        <input type="submit" value="Place order" class="btn">
    </div>
    </form>

</section>


</body>
</html>