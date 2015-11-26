<%-- 
    Document   : TelaHistoriaSugestao
    Created on : 25/11/2015, 22:10:44
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
        <link href="css/style_marvel.css" rel='stylesheet' type='text/css' />
        <link href="css/style_inicial.css" rel='stylesheet' type='text/css' />
        <!-- Javascript with bootstrap and jQuery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery_hana.js"></script>
        <script src="js/jquery-ui.min.js"></script>
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
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroi')}"/>
        <c:set var="sugestao" value="${pageContext.session.getAttribute('Histsugestao')}"/>
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
            <p class="pMeuHeroi">Sugestões de história</p>
        <form action="FrontController" method="POST">
            <div class="ui container">
                <div id="abas">
                    <h3 class="h3A">Introdução</h3>
                    <div>
                        <p>
                            Lalalal 
                            Llalalala
                            Ççaçaçaçaça
                            Oaoaoaoaoaooa   
                        </p>
                    </div>
                    <h3 class="h3A">Meio</h3>
                    <div>
                        <p>
                            
                        </p>
                    </div>
                    <h3 class="h3A">Conclusão</h3>
                    <div>
                        <p>
                            
                        </p>
                    </div>
                </div>
                <br/>
                <input class="btn btn-danger btn-block" style="width: 50%;margin-left: 25%;margin-bottom: 20px" type="submit" value="Editar"/>
                <input type="hidden" name="command" value="editarhistoria"/>
            </div>
        </form>

        <!--pages-ends-->
        <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
