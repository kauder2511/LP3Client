<%-- 
    Document   : TelaMeuHeroiFacaOSeu
    Created on : 25/10/2015, 11:37:49
    Author     : racme
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="vest" value="${pageContext.session.getAttribute('Vestimenta')}"/>
<c:set var="imgcabeca" value="${pageContext.session.getAttribute('imagemCabeca')}"/>
<c:set var="imgcorpo" value="${pageContext.session.getAttribute('imagemCorpo')}"/>

<p class="pMeuHeroi">Faça seu Heroi</p>
<br/>
<br/>
<div class="container-all">
    <div class="row">
        <div class="col-md-1">&nbsp;</div>
        <div class="col-md-3">
            <div>
                <c:forEach var="vestimenta" items="${pageContext.session.getAttribute('ListaVestimenta')}">
                    <c:if test="${vestimenta.getTipo() == 1}">
                        <a href="FrontController?vest=${vestimenta.getImagem()}&id=${vestimenta.getIdVestimenta()}&tipo=1"><img src="images/${vestimenta.getImagem()}"/></a>
                        </c:if>
                    </c:forEach>
            </div>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div id="cabeca">
                    <c:choose>
                        <c:when test="${imgcabeca != null}">
                            <img class="vestCabImg" src="images/${imgcabeca}"/>
                        </c:when>
                        <c:otherwise>
                            <img class="vestCabImg" src="images/cabeca1.png"/>
                        </c:otherwise>
                    </c:choose> 
                </div>
            </div>
            <div class="row">
                <div id="tronco">
                     <c:choose>
                        <c:when test="${imgcorpo != null}">
                            <img class="vestCabImg" src="images/${imgcorpo}"/>
                        </c:when>
                        <c:otherwise>
                            <img class="vestTroncoImg" src="images/tronco1.png"/>
                        </c:otherwise>
                    </c:choose> 
                    
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <c:forEach var="vestimenta" items="${pageContext.session.getAttribute('ListaVestimenta')}">
                <c:if test="${vestimenta.getTipo()==2}">
                    <a href="FrontController?vest=${vestimenta.getImagem()}&id=${vestimenta.getIdVestimenta()}&tipo=2"><img class="vestImg" src="images/${vestimenta.getImagem()}"/></a>
                    </c:if>
                </c:forEach>
        </div>
        <div class="col-md-1">&nbsp;</div>
    </div>