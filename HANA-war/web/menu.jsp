<%-- 
    Document   : menu
    Created on : 17/10/2015, 14:20:03
    Author     : Raquel Gallo (31458521)
    Author     : William Cisang (31441564)
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="heroi" value="${pageContext.session.getAttribute('Heroimarvel')}"/>
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
                    <li class="active">
                        <a href="TelaInicial.jsp">
                            <i class="glyphicon glyphicon-home"></i>
                            &nbsp; Home
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
