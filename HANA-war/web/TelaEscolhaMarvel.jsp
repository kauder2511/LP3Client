<%-- 
    Document   : TelaEscolhaMarvel
    Created on : 04/10/2015, 21:55:16
    Author     : William Cisang (31441564)
    Author     : Raquel Gallo (31458521)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <!--<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/2.0.0/isotope.pkgd.min.js"></script> -->
        <link href="css/escolhamarvel.css" rel="stylesheet" type="text/css"/>
        <link href="css/animate.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/escolhamarvel.js"></script>


        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="marvel-icons">
            <ul class="icon-list">

                <li class="icon" data-character="spiderman">
                    <img src="http://i.annihil.us/u/prod/marvel/i/mg/9/30/538cd33e15ab7/standard_xlarge.jpg">
                    <h1 class="name">SPIDERMAN</h1>
                </li>

                <li class="icon" data-character="captain-marvel">
                    <img src="http://i.annihil.us/u/prod/marvel/i/mg/c/10/537ba5ff07aa4/standard_xlarge.jpg">
                    <h1 class="name">CAPTAIN MARVEL</h1>
                </li>

                <li class="icon" data-character="hulk">
                    <img src="http://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0/standard_xlarge.jpg">
                    <h1 class="name">HULK</h1>
                </li>

                <li class="icon" data-character="thor">
                    <img src="http://x.annihil.us/u/prod/marvel/i/mg/5/a0/537bc7036ab02/standard_xlarge.jpg">
                    <h1 class="name">THOR</h1>
                </li>

                <li class="icon" data-character="cap">
                    <img src="http://i.annihil.us/u/prod/marvel/i/mg/3/50/537ba56d31087/standard_xlarge.jpg">
                    <h1 class="name">CAPTAIN AMERICA</h1>
                </li>

                <li class="icon" data-character="wolverine">
                    <img src="http://i.annihil.us/u/prod/marvel/i/mg/2/60/537bcaef0f6cf/standard_xlarge.jpg">
                    <h1 class="name">WOLVERINE</h1>
                </li>

                <li class="icon" data-character="daredevil">
                    <img src="http://i.annihil.us/u/prod/marvel/i/mg/6/90/537ba6d49472b/standard_xlarge.jpg">
                    <h1 class="name">DAREDEVIL</h1>
                </li>

                <li class="icon" data-character="luke-cage">
                    <img src="http://x.annihil.us/u/prod/marvel/i/mg/5/e0/537bb460046bd/standard_xlarge.jpg">
                    <h1 class="name">LUKE CAGE</h1>
                </li>
            </ul>
        </div>
        <div class='form animated bounceIn'>
            <h2>Digite o nome de seu herói</h2>
            <form action="FrontController" method="POST">
                <input placeholder='Nome' type='text' name="nomemarvel"/>
                <input type="hidden" name="command" value="escolhamarvel"/>
                <button class='animated infinite pulse'>Escolher</button>
            </form>
        </div>
    </body>
</html>
