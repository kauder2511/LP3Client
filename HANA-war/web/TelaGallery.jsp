<%-- 
    Document   : TelaGallery
    Created on : 04/10/2015, 21:19:44
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
        <script type="application/x-javascript"> addEventListener("load", function() { 
            setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
        </script>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
        <title>Gallery</title>

    </head>

    <body>
        <!--header-->
        <c:import url="menu.jsp"></c:import>
            <!-- banner -->
            <div class="banner">
                <div class="bnr2">
                </div>
            </div>
            <!---->
            
            <div class="gallery">
                <div class="container">
                    <h2>Gallery</h2>
                    <div class="gallery-bottom">
                        <div class="gallery-1">
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/r4.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/r4.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl7.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl7.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl4.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl4.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl5.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl5.jpg" alt=""/></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="gallery-1">
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl6.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl6.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl2.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl2.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/r6.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/r6.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl7.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl7.jpg" alt=""/></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="gallery-1">
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl4.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl4.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/r3.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/r3.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/r4.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/r4.jpg" alt=""/></a>
                            </div>
                            <div class="col-md-3 gallery-grid">
                                <a class="example-image-link" href="images/gl11.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" src="images/gl11.jpg" alt=""/></a>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
            </div>
            <script src="js/lightbox-plus-jquery.min.js"></script>
            <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
