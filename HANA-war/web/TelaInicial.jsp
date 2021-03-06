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
        <c:import url="menu.jsp"></c:import>

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

                    <div class="slid banner4"style="opacity: 0.1">
                        <div class="caption">
                        </div>
                    </div>
                    
                    <div class="slid banner5">
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
                                        <img src="images/${h.getIdCapacete().getImagem()}" class="img-responsive imgHeroisCab"/>
                                        <img src="images/${h.getIdCorpo().getImagem()}" class="img-responsive imgHeroisCor"/>
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
        
        <!-- poster -->
        <div class="poster">
            <div class="container">
                <div class="poster-info">
                    <h3>Novos Herois a Cada Dia</h3>
                    <h4 style="color: white">Confira os heróis criados e de sua sugestão em sua história</h4>
                    <a class="hvr-bounce-to-bottom" href="TelaGallery.jsp">Heróis</a>
                </div>
            </div>
        </div>
        <!-- x-box -->
        <div class="x-box">
            <div class="container">
                <div class="x-box_sec">
                    <div class="col-md-7 x-box-left">
                        <h2>Herói Marvel</h2>
                        <h3>Modifique a história de seu herói</h3>
                        
                        <a class="hvr-bounce-to-top" href="TelaReviews.jsp">Herói</a>
                    </div>
                    <div class="col-md-5 x-box-right">
                        <img src="images/foto110.png" class="img-responsive" alt="" />
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
