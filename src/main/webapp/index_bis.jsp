<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
<title>Home - App SSE Regione Toscana</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/index.js" defer>
	
</script>

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=PT+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap')
	;

@import url(./css/index.css);

@import url(./css/login.css);
</style>
</head>

<body>
	<%@include file="header.html"%>

	<div class="row">
		<div class="col" id="header-box">
			<h1>App Servizio Sanitario Elettronico Regione Toscana - Black Edition</h1>
		</div>
	</div>


	<div class="row">

		<div class="col-3" id="home-left-box">
			<div>
				<a href="ospedali.jsp"><button class="btn btn-primary btn-side" type="button">STRUTTURE</button></a>
			</div>
			<div>
				<a href="servizi.jsp"><button class="btn btn-primary btn-side" type="button">SERVIZI</button></a>
			</div>
			<div>
				<a href="medici.jsp"><button class="btn btn-primary btn-side" type="button">MEDICI</button></a>
			</div>
			<div>
				<a href="contattaci.jsp"><button class="btn btn-primary btn-side" type="button">CONTATTACI</button></a>
			</div>
		</div>

		<div class="col-6">
			<div id="home-central-box">
				Benvenuti sulla nuova pagina del Servizio Sanitario Elettronico della Regione Toscana: da qui
				potrete visualizzare un elenco di ospedali e strutture sanitarie aderenti alla rete, consultare
				le prestazioni erogate nelle varie strutture, i medici abilitati e prenotare visite mediche e
				prestazioni specialistiche. <br> Il tutto a portata di click e con una interfaccia utente
				semplice ed intuitiva. <br> Insomma, una vera e propria rivoluzione nel mondo della Sanità
				pubblica locale! <br> Se ancora non avete un account potete crearlo cliccando su
				"Registrati" (qui a destra), dopo di che non vi resta che iniziare a navigare e prenotare le
				visite di cui avete bisogno, comodamente da casa vostra e senza attese infinite!
			</div>
		</div>

		<div class="col-3">
			<div>
				<div id="box-logout">
					<p>Ciao ${user}! Benvenuto nella tua area personale!</p>
					<a href="index.jsp"><button class="btn btn-primary" type="button" action="/black367/logout">LOGOUT</button></a>
				</div>
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
				<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	</div>
</body>

</html>