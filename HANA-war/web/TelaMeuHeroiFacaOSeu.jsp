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

<p class="pMeuHeroi">Faça seu Herói</p>
<br/>
<br/>
<div class="container-all">
    <div class="row">
        <div class="col-md-1">&nbsp;</div>
        <div class="col-md-3">
            <div>
                <c:forEach var="vestimenta" items="${pageContext.session.getAttribute('ListaVestimenta')}">
                    <c:if test="${vestimenta.getTipo() == 1}">
                        <a href="FrontController?vest=${vestimenta.getImagem()}&id=${vestimenta.getIdVestimenta()}&tipo=1">
                            <img style="margin-bottom: 20px;" src="images/${vestimenta.getImagem()}"/> &nbsp;&nbsp;&nbsp;
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <div class="col-md-4">
            <form action="FrontController" method="POST">
                <div style="margin: 15px 35% 15px 35%">
                    <span style="color:#E00000">
                        Nome do Heroi:
                    </span>
                    <input class="form-control"style="background-color: #E0E0E0;width: 160px;" type="text" name="nomeHeroi" required/>
                </div>
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
                    <a href="FrontController?vest=${vestimenta.getImagem()}&id=${vestimenta.getIdVestimenta()}&tipo=2">
                        <img class="vestImg" src="images/${vestimenta.getImagem()}"/>&nbsp;&nbsp;&nbsp;
                    </a>
                </c:if>
            </c:forEach>
        </div>
        <div class="col-md-1">&nbsp;</div>
    </div>
    <div class="row">
        <div class="col-md-1">&nbsp;</div>
        <div class="col-md-10">
            <div class="ui container">
                <h4 class="h4Hist">Criar História</h4>
                <div id="abas">
                    <h3 class="h3A">Introdução</h3>
                    <div>
                        <textarea name="historia" type="text" rows="4" cols="115">${hist.get(0).getHistoria()}</textarea>
                    </div>
                    <h3 class="h3A">Meio</h3>
                    <div>
                        <textarea name="historia" type="text" rows="4" cols="115">${hist.get(1).getHistoria()}</textarea>
                    </div>
                    <h3 class="h3A">Conclusão</h3>
                    <div>
                        <textarea name="historia" type="text" rows="4" cols="115">${hist.get(2).getHistoria()}</textarea>
                    </div>
                </div>
                <br/>
                <input class="btn btn-danger btn-block" style="width: 50%;margin-left: 25%;margin-bottom: 20px" type="submit" value="Criar Heroi"/>
                <input type="hidden" name="command" value="criarheroi"/>
            </div>
            </form>
        </div>
        <div class="col-md-1">&nbsp;</div>
    </div>
</div>