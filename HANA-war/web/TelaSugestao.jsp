<%-- 
    Document   : TelaMeuHeroi
    Created on : 04/10/2015, 21:23:45
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
        <link href="css/style-facaHeroi.css" rel='stylesheet' type='text/css' />
        <link href="css/style_inicial.css" rel='stylesheet' type='text/css' />
        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery_hana.js"></script>
        <script src="js/bootstrap.js"></script>
        <script type="application/x-javascript">
            addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>

        <title>Sugestão</title>
        
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroi')}"/>
        <c:set var="historia" value="${pageContext.session.getAttribute('Historia')}"/>
    </head>

    <body>
        <!-- header -->
        <c:import url="menu.jsp"></c:import>
            <!-- banner -->
            <div class="banner">
                <div class="bnr2">
                </div>
            </div>
            <!--pages-starts-->
                <p class="pMeuHeroi">${heroi.getNomeHeroi()}</p>
                <div class="div-container">
                    <div class="row">
                        <div class="col-md-6 heroi">
                            <img src="images/${heroi.getIdCapacete().getImagem()}" class="img-responsive imgHeroiCab"/>
                            <img src="images/${heroi.getIdCorpo().getImagem()}" class="img-responsive imgHeroiCor"/>
                        </div>
                        <div class="col-md-6 historia">
                            <c:forEach var="hist" items="${pageContext.session.getAttribute('Listahistoria')}">
                                <div class="row">
                                    <c:choose>
                                        <c:when test="${hist.getRoteiro() == 1}">
                                            <div class="col-xs-4 intro">
                                                ${hist.getHistoria()}
                                            </div>
                                        </c:when>
                                        <c:when test="${hist.getRoteiro() == 2}">
                                            <div class="col-xs-4 meio">
                                                ${hist.getHistoria()}
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="col-xs-4 conclusao">
                                                ${hist.getHistoria()}
                                            </div>
                                        </c:otherwise>
                                    </c:choose>

                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
        <!--pages-ends-->
        <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
