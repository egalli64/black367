<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi siamo</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/home.js" defer></script>

<style type="text/css">
@import url(./css/contattaci.css);

@import url(./css/header.css);
</style>
</head>
<body>
<%@ include file="header.html" %>
	<div class="container-fluid top">

		<h1 align="center">
			<b>Chi siamo</b>
		</h1>
		<br>
		<div id="infotext">
			Su questa piattaforma potete visualizzare un elenco di ospedali e
			strutture sanitarie aderenti alla rete, consultare le prestazioni
			erogate nelle varie strutture, i medici abilitati e prenotare visite
			mediche e prestazioni specialistiche. <br> Il tutto a portata di
			click! Insomma, una vera e propria rivoluzione nel mondo della Sanità
			pubblica locale! <br> Siamo a tua dispozione per qualsiasi
			dubbio, quindi non esitare a contattarci!
		</div>
		<br>

		<div class="container-fluid">
			<div class="row">
				<div class="col-6">
					<div class="container-fluid" align="center">
						<div class="row">
							<div class="col">
								<img src="pictures/Giulia.png" alt="Giulia" width="150px">
								<p>
									Giulia <br> giulia@gmail.com
								</p>
							</div>
							<div class="col">
								<img src="pictures/Arianna.jpg" alt="Arianna" width="150px">
								<p>
									Arianna <br> arianna@gmail.com
								</p>
							</div>

						</div>

						<div class="row">
							<div class="col">
								<img src="pictures/MariaG.jpg" alt="Maria Grazia" width="150px">
								<p>
									Maria Grazia <br> mariagrazia@gmail.com
								</p>
							</div>
							<div class="col">
								<img src="pictures/Federico.jpg" alt="Federico" width="150px">
								<p>
									Federico <br> federico@gmail.com
								</p>
							</div>

						</div>
						<div class="row">
							<div class="col">
								<img src="pictures/Luigi.jpg" alt="Luigi" width="150px">
								<p>
									Luigi <br> luigi@gmail.com
								</p>
							</div>
							<div class="col">
								<img src="pictures/nicole.jpg" alt="Nicole" width="150px">
								<p>
									Nicole <br> nicole@gmail.com
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6">
					<form class="form">
						<h2>
							<b>Contattaci</b>
						</h2>
						<br>
						<div class="col-20">
							<label for="InputName"><b>Nome</b></label> <input type="text"
								class="form-control" id="InputName" required>
						</div>
						<div class="col-20">
							<label for="InputMail"><b>E-mail</b></label> <input type="email"
								class="form-control" id="InputMail" required>
						</div>
						<div class="col-20">
							<label for="InputText"><b>La tua richiesta</b></label>
							<textarea id="InputText" class="form-control"></textarea>
						</div>
						<br>
						<button type="submit" class="btn btn-primary">Invia</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<br>
	<a id="callHome" href="index.jsp">Torna alla Home</a>
</body>
</html>