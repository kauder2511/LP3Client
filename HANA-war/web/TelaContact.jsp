<%-- 
    Document   : TelaContact
    Created on : 04/10/2015, 21:16:58
    Author     : Raquel
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Page style with bootstrap -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style_marvel.css" rel='stylesheet' type='text/css' />
        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.min.js"></script>
        <script type="application/x-javascript"> addEventListener("load", function() { 
            setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
        </script>

        <title>Contact</title>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
    </head>

    <body>
        <!-- header -->
        <div class="top-banner">
            <!--banner-info-->
            <div class="banner-info">
                <div class="container">
                    <div class="logo">
                        <a href="TelaInicial.jsp"><img src="images/logoHANA.jpg" style="width: 250px"/></a>
                    </div>
                    <div class="top-menu">
                        <span class="menu"></span>
                        <ul class="nav1">
                            <li>
                                <a href="TelaInicial.jsp">
                                    <i class="glyphicon glyphicon-home"></i>
                                    &nbsp; Home
                                </a>
                            </li>
                            <li>
                                <a href="TelaAbout.jsp"><i class="glyphicon glyphicon-exclamation-sign"></i>
                                    &nbsp; About
                                </a>
                            </li>
                            <li>
                                <a href="TelaReviews.jsp">${heroi.getNomeHeroimar()}</a>
                            </li>
                            <li>
                                <a href="TelaMeuHeroi.jsp">Meu Herói</a>
                            </li>
                            <li>
                                <a href="TelaGallery.jsp">
                                    &nbsp; Gallery
                                </a>
                            </li>
                            <li class="active">
                                <a href="TelaContact.jsp"><i class="glyphicon glyphicon-envelope"></i>
                                    &nbsp; Mail
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- script-for-menu -->
                    <script>
                        $("span.menu").click(function () {
                            $("ul.nav1").slideToggle(300, function () {
// Animation complete.
                            });
                        });
                    </script>
                    <!-- /script-for-menu -->
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- banner -->
        <div class="banner">
            <div class="bnr2">
            </div>
        </div>
        <!---->
        <div class="contact">
            <div class="container">
                <div class="contact-head">
                    <h2>Contact</h2>
                    <form>
                        <div class="col-md-6 contact-left">
                            <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Name';
                                    }">
                            <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Email';
                                    }">
                            <input type="text" class="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Phone';
                                    }">
                        </div>
                        <div class="col-md-6 contact-right">
                            <textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Message';
                                    }">Message</textarea>
                            <input type="submit" value="SEND"/>
                        </div>
                        <div class="clearfix"></div>
                    </form>
                </div>
                <div class="contact-map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12386182.960956775!2d-74.08302114251626!3d40.71866701702417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1436524193425" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="address">
                    <h3>Our Locations</h3>
                    <div class="locations">
                        <ul>
                            <li><span></span></li>
                            <li>
                                <div class="address-info">
                                    <h4>New York, Washington</h4>
                                    <p>10-765 MD-Road</p>
                                    <p>Washington, DC, United States,</p>
                                    <p>Phone: 123 456 7890</p>
                                    <p>Mail: <a href="mailto:info@example.com">info(at)example.com</a></p>
                                    <h5><a href="">Visit on Google Maps >></a></h5>
                                </div>
                            </li>
                        </ul>
                        <ul>
                            <li><span></span></li>
                            <li>
                                <div class="address-info">
                                    <h4>London, UK</h4>
                                    <p>10-765 MD-Road</p>
                                    <p>Lorem ipsum, domon sit, UK,</p>
                                    <p>Phone: 123 456 7890</p>
                                    <p>Mail: <a href="mailto:info@example.com">info(at)example.com</a></p>
                                    <h5><a href="">Visit on Google Maps >></a></h5>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="footer-grids">
                    <div class="col-md-3 ftr-info">
                        <h3>About Us</h3>
                        <p>Sed faucibus mollis laoreet. Sed vehicula faucibus tristique lectus a orci molestie finibus.
                            Suspendisse pharetra, metus sed rutrum pretium.</p>
                    </div>
                    <div class="col-md-3 ftr-grid">
                        <h3>Categories</h3>
                        <ul class="ftr-list">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Racing</a></li>
                            <li><a href="#">Adventure</a></li>
                            <li><a href="#">Simulation</a></li>
                            <li><a href="#">Bike</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 ftr-grid">
                        <h3>Platform</h3>
                        <ul class="ftr-list">
                            <li><a href="#">Pc</a></li>
                            <li><a href="#">Ps4</a></li>
                            <li><a href="#">XBOX 360</a></li>
                            <li><a href="#">XBOX ONE</a></li>
                            <li><a href="#">PSP</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 ftr-grid">
                        <h3>Information</h3>
                        <ul class="ftr-list">
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Wish Lists</a></li>
                            <li><a href="#">Site Map</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!---->
        <div class="copywrite">
            <div class="container">
                <p> © 2015 Game Box. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
            </div>
        </div>
    </body>
</html>
