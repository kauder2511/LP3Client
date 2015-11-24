<%-- 
    Document   : TelaAbout
    Created on : 04/10/2015, 21:15:31
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

        <title>About Us</title>
        <c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
    </head>

    <body>
        <!--header-->
        <c:import url="menu.jsp"></c:import>
            <!-- banner -->
            <div class="banner">
                <div class="bnr2">
                </div>
            </div>
            <!-- About -->
            <div class="about">
                <div class="container">
                    <h2>About</h2>
                    <div class="about-info-grids">
                        <div class="col-md-5 abt-pic">
                            <img src="images/aboutImage.jpg" class="img-responsive" style="width: 100%;height: 500px;" />
                        </div>
                        <div class="col-md-7 abt-info-pic">
                            <h3>HANA - Heroes of a New Age</h3>
                            <p>Trabalho da disciplina de Linguagem de Programação III, adiministrada pelo professor
                            Pedro Cacique. No qual o objetivo da disciplina é montar um site utilizando um
                            Application Programming Interface (API) de algum site conhecido.</p>
                            <p>No site HANA, foi utilizada a API da Marvel, que possui informações dos heróis marvel,
                                suas histórias, quadrinhos, desenhos e filmes que participaram, etc.
                                Nesse site é possível fazer a criação e escolha de:</p>
                            <ul>
                                <li>Herói.</li>
                                <li>Vestimenta do herói.</li>
                                <li>Histórias para o herói criado.</li>
                                <li>Entre outras coisa.</li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="team">
                        <h3>Our Team</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <img src="images/william.jpg" class="wImg">
                                <h4 class="h4About">William Zischang Cisang</h4>
                                <p class="pAbout">Aluno da Universidade Mackenzie, cursando Ciência da Computação.</p>
                                <p class="pAbout">No momento está no 4º semestre da graduação.</p>
                            </div>
                            <div class="col-md-6">
                                <img src="images/raquel.jpg" class="rImg">
                                <h4 class="h4About">Raquel Baptista Gallo</h4>
                                <p class="pAbout">Aluna da Universidade Mackenzie, cursando Ciência da Computação.</p>
                                <p class="pAbout">No momento está no 4º semestre da graduação. </p>
                            </div>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer-->
        <c:import url="footer.jsp"></c:import>
    </body>
</html>
