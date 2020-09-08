<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home - App SSE Regione Toscana</title>
</head>
<body>
<%@ include file="header.html" %>

    <div class="container-fluid top">
        <div class="row">
            <div class="col" id="header-box">
                <h1>
                    App Servizio Sanitario Elettronico Regione Toscana - Black Edition
                </h1>
            </div>
        </div>


        <div class="row">

            <div class="col-3" id="home-left-box">
                <div><a href="ospedali.jsp"><button class="btn btn-primary btn-side"
                            type="button">STRUTTURE</button></a></div>
                <div><a href="servizi.jsp"><button class="btn btn-primary btn-side" type="button">SERVIZI</button></a>
                </div>
                <div><a href="medici1.jsp"><button class="btn btn-primary btn-side" type="button">MEDICI</button></a>
                </div>
                <div><a href="contattaci.jsp"><button class="btn btn-primary btn-side"
                            type="button">CONTATTACI</button></a></div>
            </div>

            <div class="col-6">
                <div id="home-central-box">
                    Benvenuti sulla nuova pagina del Servizio Sanitario Elettronico della Regione Toscana: da qui
                    potrete visualizzare un elenco di ospedali e strutture sanitarie aderenti alla rete, consultare le
                    prestazioni erogate nelle varie strutture, i medici abilitati e prenotare visite mediche e
                    prestazioni specialistiche.
                    <br>
                    Il tutto a portata di click e con una interfaccia utente semplice ed intuitiva.
                    <br>
                    Insomma, una vera e propria rivoluzione nel mondo della Sanità pubblica locale!
                    <br>
                    Se ancora non avete un account potete crearlo cliccando su "Registrati" (qui a destra), dopo di che
                    non vi resta che iniziare a navigare e prenotare le visite di cui avete bisogno, comodamente da casa
                    vostra e senza attese infinite!
                </div>
            </div>

            <div class="col-3">
                <div>
                    <a href="login.jsp"><button class="btn btn-primary btn-side" type="button">ACCEDI O
                            REGISTRATI</button></a>
                </div>
            </div>
        </div>

        <div class="container-fluid top">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./pictures/ospedale1.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 class="carousel-text">Ospedale 1</h3>
                            <!--                            <h4 class="carousel-text">Se non ne hai bisogno, meglio, ma se ne hai bisogno, scegli bene!     -->
                            </h4>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./pictures/ospedale2.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 class="carousel-text">Ospedale 2</h3>
                            <!--                            <h4 class="carousel-text">Se non ne hai bisogno, meglio, ma se ne hai bisogno, scegli bene!     -->
                            </h4>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./pictures/ospedale3.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 class="carousel-text">Ospedale 3</h3>
                            <!--                            <h4 class="carousel-text">Se non ne hai bisogno, meglio, ma se ne hai bisogno, scegli bene!     -->
                            </h4>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./pictures/ospedale4.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 class="carousel-text">Ospedale 4</h3>
                            <!--                            <h4 class="carousel-text">Se non ne hai bisogno, meglio, ma se ne hai bisogno, scegli bene!     -->
                            </h4>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</body>
</html>