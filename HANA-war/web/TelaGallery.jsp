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
        <link href="css/jquery-ui.css" rel='stylesheet' type='text/css' />
        <link href="css/jquery-ui.min.css" rel='stylesheet' type='text/css' />
        <link href="css/jquery-ui.theme.css" rel='stylesheet' type='text/css' />
        <link href="css/jquery-ui.theme.min.css" rel='stylesheet' type='text/css' />
        <link href="css/style_marvel.css" rel='stylesheet' type='text/css' />
        <link href="css/style_inicial.css" rel='stylesheet' type='text/css' />
        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script type="application/x-javascript"> addEventListener("load", function() { 
            setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
        </script>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroi')}"/>
        <title>Heróis Criados</title>

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
                    <p class="pMeuHeroi">Heróis Criados</p>
                    <div class="gallery-bottom">

                        <div class="gallery-1">
                        <c:forEach var="h" items="${pageContext.session.getAttribute('Listaheroi')}">
                            <div class="col-md-3 gallery-grid">
                                <a href="FrontController?action=heroiselect&id=${h.getIdHeroi()}"><div class="divHeroi">
                                    <img class="imgHeroiCab" src="images/${h.getIdCapacete().getImagem()}"/>
                                    <img class="imgHeroiCor" src="images/${h.getIdCorpo().getImagem()}"/>
                                    </div></a>
                                <div class="divTextoHeroi">
                                    <p>${h.getNomeHeroi()}</p>
                                    <p>${h.getIdUser().getNomeUsuario()}
                                </div>
                            </div>
                        </c:forEach>
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
