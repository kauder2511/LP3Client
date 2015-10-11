<%-- 
    Document   : TelaTypo
    Created on : 04/10/2015, 21:23:45
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
        <script type="application/x-javascript">
            addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>

        <title>Meu Herói</title>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
        <c:set var="meuheroi" value="${pageContext.session.getAttribute('Heroi')}"/>
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
                            <li class="active">
                                <a href="TelaMeuHeroi.jsp">Meu Herói</a>
                            </li>
                            <li>
                                <a href="TelaGallery.jsp">
                                    &nbsp; Gallery
                                </a>
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
        <!--pages-starts-->
        <div class="divHeroi">OLAAAAA</div>
        <c:choose>
            <c:when test="${meuheroi != null}">
                <div class="divHeroi">OLA</div>
                <span class="divHeroi">${meuheroi.getNomeHeroi()}</span>
            </c:when>
            <c:otherwise>
                VocÊ não tem um heroi.
            </c:otherwise>
        </c:choose>
        <!--pages-ends-->
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
