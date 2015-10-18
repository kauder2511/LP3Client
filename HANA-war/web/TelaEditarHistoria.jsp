<%-- 
    Document   : TelaEditarHistoria
    Created on : 12/10/2015, 12:26:57
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
        <link href="css/style_inicial.css" rel='stylesheet' type='text/css' />
        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
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
        <c:set var="hist" value="${pageContext.session.getAttribute('Historia')}"/>
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
            <h2 class="h2Titles">Editar história de ${heroi.getNomeHeroimar()}</h2>
        <form action="FrontController" method="POST">
            <label class="checkbox-inline">
                <input class="" type="radio" name="roteiro" value="1" checked /> Introdução
            </label>
            <label class="checkbox-inline">
                <input type="radio" name="roteiro" value="2" /> Meio
            </label>
            <label class="checkbox-inline">
                <input type="radio" name="roteiro" value="3" /> Conclusão
            </label>
            <textarea class="form-control" type="text" name="historia" rows="4">${hist.getHistoria()}</textarea>
            <input class="btn btn-primary btn-block" type="submit" value="Editar"/>
            <input type="hidden" name="command" value="editarhistoria"/>
        </form>

        <!--pages-ends-->
        <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>