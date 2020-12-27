<%-- 
    Document   : home
    Created on : Sep 25, 2020, 1:31:54 PM
    Author     : Hoang Yen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>The Pumpkin Coffee Home</title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/templatemo-style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <style>
            .tm-product img{
                width: 25%;
                height: auto;
            }
        </style>
    </head>
    <body>
        <!-- Preloader -->
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Preloader -->
        <div class="tm-top-header">
            <div class="container">
                <div class="row">
                    <div class="tm-top-header-inner">
                        <div class="tm-logo-container">
                            <img src="images/page/logo.png" alt="Logo" class="tm-site-logo">
                            <a href="home">     <h1 class="tm-site-name tm-handwriting-font">The Pumpkin Coffee</h1></a>
                        </div>
                        <div class="mobile-menu-icon">
                            <i class="fa fa-bars"></i>
                        </div>
                        <nav class="tm-nav">
                            <ul>
                                <li><a href="menu">Menu</a></li>
                                    <%
                                        if (session.getAttribute("customer") != null) {
                                            Customer customer = (Customer) session.getAttribute("customer");
                                    %>
                                <li><a href="#" class="tm-popular-item-hr" ><%=customer.getFull()%></a></li> 
                                <li><a href="cart">Cart</a></li>
                                <li><a href="logout">Logout</a></li>
                                    <%
                                    } else {
                                    %>     
                                <li><a href="login">Login</a></li>   
                                    <%
                                        }
                                    %>
                                <li><a href="contact">Contact</a></li>
                            </ul>
                        </nav>   
                    </div>           
                </div>    
            </div>
        </div>
        <section class="tm-welcome-section">
            <div class="container tm-position-relative">
                <div class="tm-lights-container">
                    <img src="images/page/light.png" alt="Light" class="light light-1">
                    <img src="images/page/light.png" alt="Light" class="light light-2">
                    <img src="images/page/light.png" alt="Light" class="light light-3">  
                </div>        
                <div class="row tm-welcome-content">
                    <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="images/page/header-line.png" alt="Line" class="tm-header-line">&nbsp;Welcome To&nbsp;&nbsp;<img src="images/page/header-line.png" alt="Line" class="tm-header-line"></h2>
                    <h2 class="gold-text tm-welcome-header-2">Pumpkin Coffee</h2>
                    <p class="gray-text tm-welcome-description"><i> Someone said: “Coffee is not a gentle-serene like tea, much less fierce like alcohol. Enjoyers gently think that coffee is a hyphen between joy and sadness. For those who are depressed, coffee is more and more anxious like a song with many quiet signs. And the followers of the coffee cult claim that it is the woman with the charm ... </i></p><br/>
                </div>
                <img src="images/page/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
            </div>      
        </section>
        <div class="tm-main-section light-gray-bg">
            <div class="container" id="main">
                <section class="tm-section row">
                    <div class="col-lg-9 col-md-9 col-sm-8">
                        <h2 class="tm-section-header gold-text tm-handwriting-font">The Best Coffee for you</h2>
                        <h2>The Pumpkin Coffee</h2>
                        <p class="tm-welcome-description">    <p class="gray-text tm-welcome-description"><i>The Pumpkin Coffee house begin with dreaming of a young people had experienced the bitter taste of life to get his honorable successful.<br/> Every finished product is meticulous care from love of founders.</i></p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
                        <div class="inline-block shadow-img">
                            <img src="images/page/1.jpg" alt="Image" class="img-circle img-thumbnail">  
                        </div>              
                    </div>            
                </section>          
                <section class="tm-section tm-section-margin-bottom-0 row">
                    <div class="col-lg-12 tm-section-header-container">
                        <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Popular Items</h2>
                        <div class="tm-hr-container"><hr class="tm-hr"></div>
                    </div>
                    <div class="col-lg-12 tm-popular-items-container">
                        <div class="tm-popular-item">
                            <img src="images/page/popular-1.jpg" alt="Popular" class="tm-popular-item-img">
                            <div class="tm-popular-item-description">
                                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">C</span>old Brew</h3><hr class="tm-popular-item-hr">
                                <p>The process of leaching flavor from the beans produces a chemical profile different from conventional brewing methods.</p>
                                <div class="order-now-container">
                                    <a href="menu?category=CB" class="order-now-link tm-handwriting-font">Order Now</a>
                                </div>
                            </div>              
                        </div>
                        <div class="tm-popular-item">
                            <img src="images/page/popular-2.jpg" alt="Popular" class="tm-popular-item-img">
                            <div class="tm-popular-item-description">
                                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">M</span>acchiato</h3><hr class="tm-popular-item-hr">
                                <p>Macchiato is an espresso coffee drink with a small amount of milk, usually foamed.</p>
                                <div class="order-now-container">
                                    <a href="menu?category=TSM" class="order-now-link tm-handwriting-font">Order Now</a>
                                </div>
                            </div>              
                        </div>
                        <div class="tm-popular-item">
                            <img src="images/page/popular-3.jpg" alt="Popular" class="tm-popular-item-img">
                            <div class="tm-popular-item-description">
                                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">I</span>ced Coffee</h3><hr class="tm-popular-item-hr">
                                <p>Iced coffee is a type of coffee beverage served chilled, brewed variously with the fundamental division being cold brew.</p>
                                <div class="order-now-container">
                                    <a href="menu?category=CPDX" class="order-now-link tm-handwriting-font">Order Now</a>
                                </div>
                            </div>              
                        </div>
                    </div>          
                </section>
                <section class="tm-section">
                    <div class="row">
                        <div class="col-lg-12 tm-section-header-container">
                            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo">Menu Special</h2> 
                            <div class="tm-hr-container"><hr class="tm-hr"></div> 
                        </div>  
                    </div>          
                    <div class="row">
                        <div class="tm-daily-menu-container margin-top-60">
                            <div class="col-lg-4 col-md-4">
                                <img src="images/page/menu-board.png" alt="Menu board" class="tm-daily-menu-img">      
                            </div>            
                            <div class="col-lg-8 col-md-8">
                                <jsp:useBean id="most" class="model.ProductMostDAO"/>
                                <c:set var="total" value="${most.totalAmount}"/>
                                <c:forEach items="${most.topProductMost}" var="m">
                                    <fmt:formatNumber type = "percent" maxIntegerDigits="2" value="${m.amount*100/total}" var="p"/>
                                    <div class="tm-product">    
                                        <img src="images/products/${m.image}" alt="Product">
                                        <div class="tm-product-text">
                                            <h3 class="tm-product-title"><i class="tm-popular-item-hr">${m.name}</i></h3>
                                            <p>Contain: ${p}</p>
                                        </div>
                                        <div class="tm-product-price">
                                            <a href="order?proID=${m.id}" class="tm-product-price-link tm-handwriting-font">Order</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>          
                </section>
            </div>
        </div> 
        <footer>
            <div class="tm-black-bg">
                <div class="container">
                    <div class="row margin-bottom-60">
                        <nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
                            <h3 class="tm-footer-div-title">Services</h3>
                            <ul>
                                <li><a href="#">Web design</a></li>
                                <li><a href="#">Development</a></li>
                                <li><a href="#">Hosting</a></li>
                            </ul>
                        </nav>  
                        <nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
                            <h3 class="tm-footer-div-title">About</h3>
                            <ul>
                                <li><a href="#">Company</a></li>
                                <li><a href="#">Team</a></li>
                                <li><a href="#">Legacy</a></li>
                            </ul>
                        </nav>
                        <div class="col-lg-4 col-md-4 tm-footer-div">
                            <h3 class="tm-footer-div-title">Get Social</h3>
                            <div class="tm-social-icons-container">
                                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-youtube"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-behance"></i></a>
                            </div>
                        </div>
                    </div>          
                </div>  
            </div>      
            <div>
                <div class="container">
                    <div class="row tm-copyright">
                        <p class="col-lg-12 small copyright-text text-center">Copyright &copy; 2084 Your Cafe House</p>
                    </div>  
                </div>
            </div>
        </footer> <!-- Footer content-->  
        <!-- JS -->
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
        <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

    </body>
</html>
