<%-- 
    Document   : TelaSingle
    Created on : 04/10/2015, 21:22:21
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

        <title>Single</title>
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
                                    <i class="glyphicon glyphicon-home"></i> &nbsp; Home
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
        <!-- banner -->
        <div class="banner">
            <div class="bnr2">
            </div>
        </div>
        <!---->
        <div class="blog">
            <div class="container">
                <div class="col-md-8 blog-left">
                    <div class="blog-info">
                        <div class="blog-info-text">
                            <div class="blog-img">
                                <img src="images/img12.jpg" alt="" />
                            </div>
                            <p class="snglp">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. There are many variations of passages
                                of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                                anything embarrassing hidden in the middle of text.</p>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem
                                Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                        </div>
                        <div class="comment-icons">
                            <ul>
                                <li>
                                    <span></span><a href="#">Lorem ipsum dolor sit</a> </li>
                                <li>
                                    <span class="clndr"></span>MARCH 1, 2013</li>
                                <li>
                                    <span class="admin"></span> <a href="#">Admin</a></li>
                                <li>
                                    <span class="cmnts"></span> <a href="#">5 comments</a></li>
                                <li><a href="#" class="like">15</a></li>
                            </ul>
                        </div>
                        <div class="response">
                            <h4>Responses</h4>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Admin</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>MARCH 21, 2013</li>
                                        <li><a href="TelaSingle.jsp">Reply</a></li>
                                    </ul>
                                    <div class="media response-info">
                                        <div class="media-left response-text-left">
                                            <a href="#">
                                                <img class="media-object" src="images/icon1.png" alt="" />
                                            </a>
                                            <h5><a href="#">Admin</a></h5>
                                        </div>
                                        <div class="media-body response-text-right">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et.</p>
                                            <ul>
                                                <li>MARCH 21, 2014</li>
                                                <li><a href="TelaSingle.jsp">Reply</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Admin</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>MARCH 21, 2013</li>
                                        <li><a href="TelaSingle.jsp">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                    <div class="coment-form">
                        <h4>Leave your comment</h4>
                        <form>
                            <input type="text" value="Name " onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Name';
                                                        }" required="">
                            <input type="text" value="Subject " onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Subject';
                                                        }" required="">
                            <input type="text" value="Email (will not be published)*" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Email (will not be published)*';
                                                        }" required="">
                            <textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Your Comment...';
                                                        }" required="">Your Comment...</textarea>
                            <input type="submit" value="SUBMIT">
                        </form>
                    </div>
                </div>
                <div class="col-md-4 single-page-right">
                    <div class="category blog-ctgry">
                        <h4>Top Games</h4>
                        <div class="list-group">
                            <a href="TelaSingle.jsp" class="list-group-item">Cras justo odio</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Dapibus ac facilisis in</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Morbi leo risus</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Porta ac consectetur ac</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Vestibulum at eros</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Cras justo odio</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Cras justo odio</a>
                            <a href="TelaSingle.jsp" class="list-group-item">Cras justo odio</a>
                        </div>
                    </div>
                    <div class="recent-posts">
                        <h4>Recent posts</h4>
                        <div class="recent-posts-info">
                            <div class="posts-left sngl-img">
                                <a href="TelaSingle.jsp">
                                    <img src="images/img16.jpg" class="img-responsive zoom-img" alt="" /> </a>
                            </div>
                            <div class="posts-right">
                                <label>March 5, 2015</label>
                                <h5><a href="TelaSingle.jsp">Finibus Bonorum</a></h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing incididunt.</p>
                                <a href="TelaSingle.jsp" class="btn btn-primary hvr-rectangle-in">Read More</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="recent-posts-info">
                            <div class="posts-left sngl-img">
                                <a href="TelaSingle.jsp">
                                    <img src="images/img17.jpg" class="img-responsive zoom-img" alt="" />
                                </a>
                            </div>
                            <div class="posts-right">
                                <label>March 1, 2015</label>
                                <h5><a href="TelaSingle.jsp">Finibus Bonorum</a></h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing incididunt.</p>
                                <a href="TelaSingle.jsp" class="btn btn-primary hvr-rectangle-in">Read More</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
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
