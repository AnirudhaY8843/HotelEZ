

<%@page import="model.ReviewDTO"%>
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
  
    <title>HotelEZ</title>
</head>

<body>
<%

	HttpSession session1=request.getSession(false);

%>
<header>

    <!-- Header Starts -->
    <!-- logo -->
    <a href="#" class="logo"><i class="fas fa-utensils"></i>HotelEZ.</a>
     <!-- logo -->
     <!-- navbar -->
    <nav class="navbar">
        <a class="active" href="#home">Home</a>
        <a  class="" href="#dishes">dishes</a>
        <a  class="" href="#about">about</a>   
        <a class=""  href="review">review</a>
        <a  class="" href="#order">order</a>
        <a  class="" href="./login.jsp">login</a>
    </nav>
     <!-- navbar -->
    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="#" class="fas fa-heart"></a>
        <%
        if(session1!=null) {
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

<!-- search Ends -->

<!-- home Starts -->


<section class="home" id="home">
    <div class="swiper mySwiper home-slider">
        <div class="swiper-wrapper wrapper">
            <div class="swiper-slide slide">
                <div class="content">
                    <span>Our special Dishes</span>
                    <h3>spicy noodles</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet ipsa incidunt quaerat.</p>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="image">
                    <img src="./images/image-1.png" alt="noodles">
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="content">
                    <span>Our special Dishes</span>
                    <h3>fried chicken</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet ipsa incidunt quaerat.</p>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="image">
                    <img src="./images/image-2.jpg" alt="chicken">
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="content">
                    <span>Our special Dishes</span>
                    <h3>Hot pizza</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet ipsa incidunt quaerat.</p>
                    <a href="#" class="btn">order now</a>
                </div>
                <div class="image">
                    <img src="./images/image-3.jpg" alt="pizza">
                </div>
            </div>
        </div>

        <div class="swiper-pagination"></div>
    
    </div>
    
</section>

<!-- Home ends -->

<!-- Dishes section -->

<section class="dishes" id="dishes">
    <h3 class="sub-heading"> Our Dishes</h3>
    <h1 class="heading">popular dishes</h1>

    <div class="box-container">

        <div class="box">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-eye"></a>
            <img src="./images/dish-1.jpg" alt="">
            <h3>tasty food</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>
                &#8377;500
            </span>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-eye"></a>
            <img src="./images/dish-1.jpg"  alt="">
            <h3>tasty food</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>
                &#8377;500
            </span>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-eye"></a>
            <img src="./images/dish-1.jpg"  alt="">
            <h3>tasty food</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>
                &#8377;500
            </span>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-eye"></a>
            <img src="./images/dish-1.jpg"  alt="">
            <h3>tasty food</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>
                &#8377;500
            </span>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-eye"></a>
            <img src="./images/dish-1.jpg"  alt="">
            <h3>tasty food</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>
                &#8377;500
            </span>
            <a href="#" class="btn">add to cart</a>
        </div>

        <div class="box">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-eye"></a>
            <img src="./images/dish-1.jpg" >
            <h3>tasty food</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <span>
                &#8377;500
            </span>
            <a href="#" class="btn">add to cart</a>
        </div>


    </div>

</section>

<!-- Dishes section ends -->


<!-- About us -->

<section class="about" id="about">

    <h3 class="sub-heading">About us</h3>
    <h1 class="heading">why choose us?</h1>

    <div class="row">
        <div class="image">
            <img src="./images/about.jpg" width="700px" alt="about image">
        </div>

        <div class="content">
            <h3>best food in pune</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet pariatur cumque vero laboriosam molestias numquam necessitatibus asperiores earum nam! Amet esse repellat explicabo consectetur vel quo eum tenetur consequatur id!</p>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta nisi voluptatem officia nemo numquam rerum earum obcaecati, qui itaque aliquam?</p>
            <div class="icons-container">
                <div class="icons">
                    <i class="fas fa-shipping-fast"></i>
                    <span>free delivery</span>
                </div>

                <div class="icons">
                    <i class="fa-solid fa-indian-rupee-sign"></i>
                    <span>easy payments</span>
                </div>

                <div class="icons">
                    <i class="fas fa-headset"></i>
                    <span>24/7 service</span>
                </div>
            </div>
            <a href="#" class="btn">learn more</a>
        </div>
    </div>

</section>

<!-- About us ends -->


<!-- Menu starts -->

<section class="menu" id="menu">
    <h3 class="sub-heading">our menu</h3>
    <h1 class="heading">Special dishes</h1>

    <div class="box-container">
       
        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>

        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>

        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>

        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>

        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>

        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>

        <div class="box">
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
                <h3>delicious food</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aliquid maxime voluptas eos laboriosam ea.</p>
                <a href="#" class="btn">add to cart</a>
                <span class="price">&#8377;200</span>
            </div> 
        </div>
    </div>

</section>

<!-- Menu ends -->
<!-- /review section  -->






<!-- review ends -->
<!-- order section -->
<section class="order" id="order">

    <h3 class="sub-heading">Order now</h3>
    <h1 class="heading">free and fast</h1>

    <form action="">

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


<!-- order section is ended -->

<!-- footer starts -->

    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>locations</h3>
                <a href="#">garade</a>
                <a href="#">saswad</a>
                <a href="#">kalewadi</a>
                <a href="#">dive</a>
                <a href="#">harani</a>
            </div>

            <div class="box">
                <h3>quick links</h3>
                <a href="#">home</a>
                <a href="#">dishes</a>
                <a href="#">about</a>
                <a href="#">menu</a>
                <a href="#">review</a>
                <a href="#">order</a>
            </div>

            <div class="box">
                <h3>contacts</h3>
                <a href="#">+917218382909</a>
                <a href="#">+918421478843</a>
                <a href="#">abc@gmail.com</a>
                <a href="#">xyz@gmail.com</a>
                <a href="#">pune 412-301</a>
                
            </div>

            <div class="box">
                <h3>follow us</h3>
                <a href="#">facebook</a>
                <a href="#">instagram</a>
                <a href="#">twitter</a>
                <a href="#">linkdin</a>
            </div>
        </div>

        <div class="credit">copyright @ 2023 by <span>anirudha yadav</span></div>
    </section>

<!-- footer ends  -->






<!-- script for slider -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- embedded script -->
<script src="script.js">


</script>


</body>
</html>
