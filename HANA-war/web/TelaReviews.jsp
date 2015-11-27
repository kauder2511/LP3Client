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
        <link href="css/jquery-ui.css" rel='stylesheet' type='text/css' />
        <link href="css/jquery-ui.min.css" rel='stylesheet' type='text/css' />
        <link href="css/style_inicial.css" rel='stylesheet' type='text/css' />
        <link href="css/style_marvel.css" rel='stylesheet' type='text/css' />
        <link href="css/style_marvel2.css" rel='stylesheet' type='text/css' />

        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery_hana.js"></script>
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
                    <p class="pMeuHeroi">Meu Herói Marvel</p>
                    <br/>
                    <div class="divImage">
                        <img class="img-circle imgHeroi" src ="${heroi.getImage()}"/>
                </div>
                <div class="title">
                    <h4 class="h4Hist">${heroi.getNomeHeroimar()}</h4>
                </div>
                <div class="infos">
                    <form action="FrontController" method="POST">
                        <div id="abas">
                            <h3 class="h3A">História</h3>
                            <div>
                                <textarea id="histMarvel"  name="historia" type="text" rows="4" cols="115">${heroi.getHistoria()}</textarea>

                            </div>
                        </div>
                        <br/>
                        <input class="btn btn-danger btn-block" style="width: 50%;margin-left: 25%;margin-bottom: 20px" type="submit" value="Modificar História"/>
                        <input type="hidden" name="command" value="modificarhistoria"/>
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--footer-->
    <c:import url="footer.jsp"></c:import>
</body>
</html>
