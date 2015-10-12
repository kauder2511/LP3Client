<%-- 
    Document   : TelaInicial
    Created on : 04/10/2015, 21:12:51
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
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style_marvel.css" rel='stylesheet' type='text/css' />
        <link href="css/style_inicial.css" rel='stylesheet' type='text/css' />
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <script src="js/caroussel.js"></script>
        <script type="application/x-javascript">
            addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>

        <title>HANA - Heroes of a New Age</title>
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
                            <li class="active">
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

        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    nav: false,
                    speed: 3000,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>

        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">

                    <div class="slid banner1">
                        <div class="caption">
                        </div>
                    </div>


                    <div class="slid banner2">
                        <div class="caption">
                        </div>
                    </div>


                    <div class="slid banner3">
                        <div class="caption">
                        </div>
                    </div>

                    <div class="slid banner4">
                        <div class="caption">
                        </div>
                    </div>
                </ul>
            </div>
        </div>

        <!-- content -->
        <div class="content">
            <div class="container">
                <div class="top-games">
                    <h3>Heróis</h3>
                    <span></span>
                </div>
                <div class="top-game-grids divSeparaHerois">
                    <ul id="flexiselDemo1">
                        <c:forEach var="h" items="${pageContext.session.getAttribute('Listaheroi')}">
                            <li>
                                <div class="game-grid">
                                    <h4 style="font-family:heroesassembleacadital;font-size: 35px; color:white;">${h.getNomeHeroi()}</h4>
                                    <p>${h.getIdCorpo().getIdVestimenta()}, ${h.getIdCapacete().getIdVestimenta()}</p>
                                    <div class="divHerois">
                                        <img src="images/cabeca${h.getIdCapacete().getIdVestimenta()}.png" class="img-responsive imgHeroisCab"/>
                                        <img src="images/tronco${h.getIdCorpo().getIdVestimenta()}.png" class="img-responsive imgHeroisCor"/>
                                    </div>
                                    <!--<img src="images/t1.jpg" class="img-responsive" alt="" />-->
                                </div>
                            </li>
                        </c:forEach>

                    </ul>

                    <script type="text/javascript">
                        $(window).load(function () {
                            $("#flexiselDemo1").flexisel({
                                visibleItems: 4,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint: 480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint: 640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint: 768,
                                        visibleItems: 3
                                    }
                                }
                            });
                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>
            </div>
        </div>
        <!-- latest -->
        <div class="latest">
            <div class="container">
                <div class="latest-games">
                    <h3>Latest Games</h3>
                    <span></span>
                </div>
                <div class="latest-top">
                    <div class="col-md-5 trailer-text">
                        <div class="sub-trailer">
                            <div class="col-md-4 sub-img">
                                <img src="images/v2.jpg" alt="img07" />
                            </div>
                            <div class="col-md-8 sub-text">
                                <a href="#">Killzone: Shadow Fall for PlayStation 4 Reviews</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="sub-trailer">
                            <div class="col-md-4 sub-img">
                                <img src="images/v1.jpg" alt="img07" />
                            </div>
                            <div class="col-md-8 sub-text">
                                <a href="#"> Spiderman 2 Full Version PC Game</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="sub-trailer">
                            <div class="col-md-4 sub-img">
                                <img src="images/v3.jpg" alt="img07" />
                            </div>
                            <div class="col-md-8 sub-text">
                                <a href="#">Sega's: Jet Set for Andriod Play Store 4 Reviews</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipi…</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="col-md-7 trailer">
                        <iframe src="https://www.youtube.com/embed/V5-DyoVlNOg?list=PLiVunv1pnIs2c0ORVqY60K3n8XMO9CoGp" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- poster -->
        <div class="poster">
            <div class="container">
                <div class="poster-info">
                    <h3>Nunc cursus dui in metus efficitur, sit amet ullamcorper dolor viverra.</h3>
                    <p>Proin ornare metus eros, quis mattis lorem venenatis eget. Curabitur eget dui euismod, varius nisl eu, pharetra lacus. Sed vehicula tempor leo. Aenean dictum suscipit magna vel tempus. Aliquam nec dui dolor. Quisque scelerisque aliquet est et dignissim.
                        Morbi magna quam, molestie sed fermentum et, elementum at dolor</p>
                    <a class="hvr-bounce-to-bottom" href="TelaReviews.jsp">Read More</a>
                </div>
            </div>
        </div>
        <!-- x-box -->
        <div class="x-box">
            <div class="container">
                <div class="x-box_sec">
                    <div class="col-md-7 x-box-left">
                        <h2>XBOX 360</h2>
                        <h3>Suspendisse ornare nisl et tellus convallis, non vehicula nibh convallis.</h3>
                        <p>Proin ornare metus eros, quis mattis lorem venenatis eget. Curabitur eget dui euismod, varius nisl eu, pharetra lacus. Sed vehicula tempor leo. Aenean dictum suscipit magna vel tempus. Aliquam nec dui dolor. Quisque scelerisque aliquet est et dignissim.</p>
                        <a class="hvr-bounce-to-top" href="TelaReviews.jsp">Read More</a>
                    </div>
                    <div class="col-md-5 x-box-right">
                        <img src="images/xbox.jpg" class="img-responsive" alt="" />
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
