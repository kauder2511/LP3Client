<%-- 
    Document   : TelaAdmin
    Created on : 25/10/2015, 20:54:59
    Author     : willi
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/jquery-ui.css" type="text/css" rel="stylesheet"/>
        <link href="css/jquery-ui.min.css" type="text/css" rel="stylesheet"/>
        <link href="css/semantic.css" type="text/css" rel="stylesheet" />
        <link href="css/semantic.min.css" type="text/css" rel="stylesheet" />
        <link href="css/admin.css" type="text/css" rel="stylesheet"/>
        <link href="css/foundation.min.css" type="text/css" rel="stylesheet" />
        
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/semantic.js"></script>
        <script src="js/semantic.min.js"></script>
        <script src="js/admin.js"></script>
        <c:set var="user" value="${pageContext.session.getAttribute('Usuario')}"></c:set>
            <title>Tela Admin</title>
        </head>
        <body>
            <div class="wrapper">
                <h1><span>Bem vindo(a)</span> ${user.getNomeUsuario()} </h1>
            <section class="psummary">
                <div class="psummary-left">
                    <p><span class="entypo-attention"></span>Status</p>
                    <p>Development</p>
                    <p><span class="entypo-hourglass"></span> Priority</p>
                    <p>Urgent</p>
                </div>
                <div class="psummary-right">
                    <p><span class="entypo-chart-line"></span> Progress</p>
                    <div class="progress">
                        <!-- Very easy to feed via PHP through the field value -->
                        <progress max="100" value="70"></progress>
                        <span>70%</span></div>
                </div>
            </section>
            <section class="pcontent-l">
                <div class="info">
                    <div class="tabs" data-tabgroup="tab-group">
                        <div class="active"><a href="#information">Usuários</a></div>
                        <div><a href="#evaluation">Heróis</a></div>
                        <div><a href="#client">Client</a></div>
                        <div><a href="#requeriments">Requeriments</a></div>
                        <div><a href="#files">Files</a></div>
                        <div><a href="#server">Server</a></div>
                    </div>
                    <section id="tab-group" class="tabgroup">
                        <div id="information">
                            <div id="bodywrap">
                                <div class="row">
                                    <div class="large-20 columns">
                                        <div class="scroll-window-wrapper">

                                            <div class="scroll-window">
                                                <table class="table table-striped table-hover user-list fixed-header">
                                                    <thead>
                                                    <th>
                                                    <div>Id</div>
                                                    </th>
                                                    <th>
                                                    <div>Name</div>
                                                    </th>
                                                    <th>
                                                    <div>Email</div>
                                                    </th>
                                                    <th>
                                                    <div>Tipo Usuário</div>
                                                    </th>
                                                    <th>
                                                    <div></div>
                                                    </th>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="h" items="${pageContext.session.getAttribute('ListaUser')}">

                                                            <tr>
                                                                <td>${h.getIdUsuario()}</td>
                                                                <td>${h.getNomeUsuario()}</td>
                                                                <td>${h.getEmail()}</td>
                                                                <c:choose>
                                                                    <c:when test="${h.getTipoUsuario() == 1}">
                                                                        <td>Administrador</td>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <td>Usuário Comum</td>
                                                                    </c:otherwise>
                                                                </c:choose>

                                                                <td class="textRight">
                                                                    <a href="FrontController?action=edituser&id=${h.getIdUsuario()}" ><button  class="ui primary button tiny">Edit</button></a>
                                                                    <a href="FrontController?action=deleteuser&id=${h.getIdUsuario()}" ><button class="ui red button alert tiny">Delete</button></a>
                                                                </td>
                                                            </tr>

                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div id="evaluation">
                           <div id="bodywrap">
                                <div class="row">
                                    <div class="large-20 columns">
                                        <div class="scroll-window-wrapper">

                                            <div class="scroll-window">
                                                <table class="table table-striped table-hover user-list fixed-header">
                                                    <thead>
                                                    <th>
                                                    <div>Id</div>
                                                    </th>
                                                    <th>
                                                    <div>Heroi</div>
                                                    </th>
                                                    <th>
                                                    <div>Id Usuario</div>
                                                    </th>                               
                                                    <th>
                                                    <div></div>
                                                    </th>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="h" items="${pageContext.session.getAttribute('ListaHeroi')}">

                                                            <tr>
                                                                <td>${h.getIdHeroi()}</td>
                                                                <td>${h.getNomeHeroi()}</td>
                                                                <td>${h.getIdUser().getIdUsuario()}</td>
                                                                

                                                                <td class="textRight">
                                                                    <a href="FrontController?action=edituser&id=${h.getIdHeroi()}" ><button  class="ui primary button tiny">História</button></a>
                                                                    <a href="FrontController?action=deleteuser&id=${h.getIdHeroi()}" ><button class="ui red button alert tiny">Delete</button></a>
                                                                </td>
                                                            </tr>

                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div id="client">
                            <h2>Heading 3</h2>
                            <p>Atque ratione soluta laboriosam illo inventore amet ipsum aliquam assumenda harum provident nam accusantium neque debitis obcaecati maxime officia saepe ad ducimus in quam libero vero quasi. Saepe sit nisi?</p>
                        </div>
                        <div id="requeriments">
                            <h2>Heading 4</h2>
                            <p>Quidem perferendis id sapiente cumque ullam repellendus dolorum odit rerum quibusdam tempora voluptatibus ipsum. Maiores laborum velit aperiam dicta quisquam assumenda at esse exercitationem culpa sequi porro minus ipsa aut.</p>
                        </div>
                        <div id="files">
                            <h2>Heading 5</h2>
                            <p>Iste eligendi ratione libero impedit quos necessitatibus labore corporis deserunt quo porro hic eius delectus ea ad amet dolore officiis debitis! Libero officia magnam consequuntur dignissimos molestias quia modi repellat.</p>
                        </div>
                        <div id="server">
                            <h2>Heading 6</h2>
                            <p>Iste eligendi ratione libero impedit quos necessitatibus labore corporis deserunt quo porro hic eius delectus ea ad amet dolore officiis debitis! Libero officia magnam consequuntur dignissimos molestias quia modi repellat.</p>
                        </div>
                    </section>
                </div>
                <div class="conversation">
                    <h3>Conversation</h3>
                </div>
            </section>
            <aside class="pcontent-r">
                <div class="history">
                    <h3>Project History</h3>
                </div>
                <div class="team">
                    <h3>Team</h3>
                </div>
            </aside>
        </div>
        <!-- END Wrapper -->
        <footer>
            <p><i class="fa fa-coffee"></i> Coded & Designed by <a href="http://codepen.io/ravenous/" target="_blank">Ravenous</a> [Franco Moya]</p>
        </footer>
    </body>
</html>
