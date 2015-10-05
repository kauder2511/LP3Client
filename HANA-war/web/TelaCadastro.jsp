<%-- 
    Document   : TelaCadastro
    Created on : 04/10/2015, 16:48:35
    Author     : william
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/cadastro.css" rel="stylesheet" type="text/css"/>
        <title>Cadastro - HANA</title>
    </head>
    <body class="background-image">
        
            <div class="background animate-bg"></div>
        </div>
        <div class="modal">
            <div class="cadastro">
                <h1>Cadastro</h1>
                <form method="POST" action="FrontController">
                    <input type="text" name="nome" placeholder="Nome" required="required"/>
                    <input type="text" name="usuario" placeholder="Usuário" required="required"/>
                    <input type="password" name="senha" placeholder="Senha" required="required"/>
                    <input type="email" name="email" placeholder="E-mail" required="required"/>
                    <button type="submit"  class="btn btn-primary btn-block btn-large">Cadastrar</button>
                    <input type="hidden" value="cadastro" name="command" va />
                </form>
            </div>
        


    </body>
</html>
