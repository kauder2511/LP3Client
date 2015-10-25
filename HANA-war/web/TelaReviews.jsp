<%-- 
    Document   : TelaReviews
    Created on : 04/10/2015, 21:21:31
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
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
        <title>${heroi.getNomeHeroimar()}</title>

    </head>

    <body>
        <!-- header -->
        <c:import url="menu.jsp"></c:import>
            <!-- banner -->
            <div class="banner">
                <div class="bnr2">
                </div>
            </div>
            <!-- content -->
            <div class="review">
                <div class="container">
                    <img src ="${heroi.getImage()}" />
                <h2>Reviews</h2>
                <div class="review-md1">
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re7.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re1.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re2.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="review-md1">
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re3.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re4.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re5.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="review-md1">
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re6.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re7.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="col-md-4 sed-md">
                        <div class=" col-1">
                            <a href="TelaSingle.jsp">
                                <img class="img-responsive" src="images/re2.jpg" alt="">
                            </a>
                            <h4><a href="TelaSingle.jsp">Sed ut perspiciatis unde omnis</a></h4>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
