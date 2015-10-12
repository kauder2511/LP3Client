<%-- 
    Document   : TelaAbout
    Created on : 04/10/2015, 21:15:31
    Author     : Raquel Gallo (31458521)
    Author     : William Cisang (31441564)
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
        <script type="application/x-javascript">
            addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>

        <title>About Us</title>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
    </head>

    <body>
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

                                <a href="TelaInicial.jsp"><i class="glyphicon glyphicon-home"></i>
                                    &nbsp; Home
                                </a>
                            </li>
                            <li class="active">

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
                                <a href="TelaGallery.jsp">Gallery</a>
                            </li>
                            <li>
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
        <!-- About -->
        <div class="about">
            <div class="container">
                <h2>About</h2>
                <div class="about-info-grids">
                    <div class="col-md-5 abt-pic">
                        <img src="images/abt.jpg" class="img-responsive" alt="" />
                    </div>
                    <div class="col-md-7 abt-info-pic">
                        <h3>Vestibulum congue neque quis ex fringilla, in pellentesque massa gravida.</h3>
                        <p>Mauris tempus lorem nec ex facilisis suscipit. Phasellus pretium rutrum augue, eu rutrum lacus lobortis rutrum. Etiam a sem et velit sollicitudin placerat. Maecenas tincidunt justo ligula, sit amet maximus dolor iaculis quis. Sed laoreet cursus posuere.
                            Pellentesque commodo odio in luctus interdum.</p>
                        <ul>
                            <li>Proin et ligula ut nulla laoreet posuere.</li>
                            <li>Sed vestibulum magna vel egestas feugiat.</li>
                            <li>Curabitur nec erat eu lorem gravida aliquet.</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="testimonals">
                    <h3>Testimonals</h3>
                    <div class="testimonal-grids">
                        <div class="col-md-4 testimonal-grid">
                            <div class="testi-info">
                                <p>""..Mauris congue, dolor at vehicula scelerisque, enim odio vehicula turpis, vitae luctus dolor nisi eget est. Aliquam maximus felis eget varius mattis. Quisque tristique nibh imperdiet dignissim molestie.""</p>
                                <h4>Mark Johnson</h4>
                                <a href="mailto:example@gmail.com">http://www.example.com</a>
                            </div>
                        </div>
                        <div class="col-md-4 testimonal-grid">
                            <div class="testi-info">
                                <p>""..Mauris congue, dolor at vehicula scelerisque, enim odio vehicula turpis, vitae luctus dolor nisi eget est. Aliquam maximus felis eget varius mattis. Quisque tristique nibh imperdiet dignissim molestie.""</p>
                                <h4>Wiiams Deo</h4>
                                <a href="mailto:example@gmail.com">http://www.example.com</a>
                            </div>
                        </div>
                        <div class="col-md-4 testimonal-grid">
                            <div class="testi-info">
                                <p>""..Mauris congue, dolor at vehicula scelerisque, enim odio vehicula turpis, vitae luctus dolor nisi eget est. Aliquam maximus felis eget varius mattis. Quisque tristique nibh imperdiet dignissim molestie.""</p>
                                <h4>Mark Johnson</h4>
                                <a href="mailto:example@gmail.com">http://www.example.com</a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="team">
                    <h3>Our Team</h3>
                    <div class="grid_4">
                        <div class="team-grid">
                            <img src="images/a1.jpg" alt="">
                            <h4>Phasellus scipitilifen lus.</h4>
                            <p>Kuspendisse laoreet augue iderti wer interdum merti oremolo lectusto odio, sedorolu fringilla estero libero. </p>
                        </div>
                    </div>
                    <div class="grid_4">
                        <div class="team-grid">
                            <img src="images/a2.jpg" alt="">
                            <h4>Phasellus scipitilifen lus.</h4>
                            <p>Kuspendisse laoreet augue iderti wer interdum merti oremolo lectusto odio, sedorolu fringilla estero libero. </p>
                        </div>
                    </div>
                    <div class="grid_4 span66">
                        <div class="team-grid">
                            <img src="images/a3.jpg" alt="">
                            <h4>Phasellus scipitilifen lus.</h4>
                            <p>Kuspendisse laoreet augue iderti wer interdum merti oremolo lectusto odio, sedorolu fringilla estero libero. </p>
                        </div>
                    </div>
                    <div class="grid_4">
                        <div class="team-grid">
                            <img src="images/a4.jpg" alt="">
                            <h4>Phasellus scipitilifen lus.</h4>
                            <p>Kuspendisse laoreet augue iderti wer interdum merti oremolo lectusto odio, sedorolu fringilla estero libero. </p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="footer-grids">
                    <div class="col-md-3 ftr-info">
                        <h3>About Us</h3>
                        <p>Sed faucibus mollis laoreet. Sed vehicula faucibus tristique lectus a orci molestie finibus. Suspendisse pharetra, metus sed rutrum pretium.</p>
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
