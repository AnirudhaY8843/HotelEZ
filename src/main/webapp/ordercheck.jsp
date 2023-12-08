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
  
    <title>HotelEZ</title>
</head>

<body>
    
    <section class="order" id="order">

    <h3 class="sub-heading">Order now</h3>
    <h1 class="heading">free and fast</h1>

    <form action="" method="post">

        <div class="inputBox">
            <div class="input">
                <span>your name</span>
                <input type="text" name="" placeholder="Enter your name" id="">
            </div>
            <div class="input">
                <span>your number</span>
                <input type="text" name="" placeholder="Enter your number" id="">
            </div>
        </div>

        <div class="inputBox">
            <div class="input">
                <span>food name</span>
                <input type="text" name="" placeholder="Enter food name" id="">
            </div>
            <div class="input">
                <span>additional food</span>
                <input type="text" name="" placeholder="Extra with food" id="">
            </div>
        </div>
        <div class="inputBox">
            <div class="input">
                <span>Quantity</span>
                <input type="number" name="" placeholder="how many orders" id="">
            </div>
            <div class="input">
                <span>date and time</span>
                <input type="datetime-local" name="" id="">
            </div>
        </div>
        <div class="inputBox">
            <div class="input">
                <span>adress</span>
                <textarea name="" id="" placeholder="Enter your adress" cols="30" rows="10"></textarea>
            </div>
            <div class="input">
                <span>any msg</span>
                <textarea name="" id="" placeholder="Enter msg here" cols="30" rows="10"></textarea>
            </div>
        </div>
        <div class="submit">
        <input type="submit" value="order now" class="btn">
    </div>
    </form>

</section>

</body>
</html>
    