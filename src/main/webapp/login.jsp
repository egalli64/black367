<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Accedi o registrati</title>

<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet" id="bootstrap-css">

<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=PT+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap')
	;

@import url(./css/login.css);
</style>
</head>

<body>
	<%@ include file="header.html"%>
	<div class="container-fluid top">
		<div class="row-fluid">

			<div class="col">
				<div class="span12">
					<div class="span6">
						<div class="area">
							<form class="form-horizontal" action="/black367/login">
								<div class="heading">
									<h4 class="form-heading">Accedi</h4>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputUsername">Username</label>

									<div class="controls">
										<input name="user" id="inputUsername" placeholder="Username" value="${user}"
											type="text">
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputPassword">Password</label>

									<div class="controls">
										<input name="password" id="inputPassword" placeholder="Password" type="password">
									</div>
								</div>

								<div class="control-group">
									<div class="controls">
										<label class="checkbox"><input type="checkbox"> Si vuole
											effettuare l'accesso come amministratori del sito? </label>
										<button class="btn btn-success" type="submit">Accedi</button>
									</div>
								</div>
								<c:if test="${wrongAccess != null and wrongAccess==true}">
									<div class="alert alert-error">

										<strong>Accesso negato!</strong> Perfavore inserisci le credenziali corrette.
									</div>
								</c:if>
							</form>
						</div>
					</div>

					<div class="span6">
						<div class="area">
							<form class="form-horizontal" action="/black367/registration">
								<div class="heading">
									<h4 id="form-heading">Non sei ancora registrato?</h4>
								</div>


								<div class="control-group">
									<label class="control-label" for="inputFirst">Nome</label>

									<div class="controls">
										<input name="nome" id="inputFirst" placeholder="Mario" type="text" required>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputLast">Cognome</label>

									<div class="controls">
										<input name="cognome" id="inputLast" placeholder="Rossi" type="text" required>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="data">Data di nascita</label>

									<div class="controls">
										<input name="data" type="date" id="data" placeholder="03/12/1993" required>
									</div>
								</div>


								<div class="control-group">
									<label class="control-label" for="citta">Città</label>

									<div class="controls">
										<input name="citta" id="citta" placeholder="Roma" type="text" required>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="sesso">Sesso</label>
									<div class="controls">
										<input type="radio" name="sesso" id="sesso-m" value="M" required> <label
											for="sesso-m" class="labels">M</label> <input type="radio" name="sesso"
											id="sesso-f" value="F" required> <label for="sesso-f" class="labels">F</label>
									</div>
								</div>



								<div class="control-group">
									<label class="control-label" for="inputEmail">Email</label>

									<div class="controls">
										<input name="email" id="inputEmail" placeholder="esempioh@gmail.com" type="text"
											required>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputUser">Username</label>

									<div class="controls">
										<input name="usr_reg" id="inputUser" placeholder="username" type="text" required>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label" for="inputPassword">Password</label>

									<div class="controls">
										<input name="psw_reg" id="inputPassword" placeholder="Min. 8 Caratteri"
											type="password" required> <small id="passwordHelpBlock"
											class="form-text text-muted"> La password deve essere lunga almeno 8
											caratteri, contenere almeno un numero, un carattere minuscolo e un carattere
											maiuscolo. </small>
									</div>
								</div>

								<c:if test="${userAlreadyExists != null and userAlreadyExists == true}">
									<div class="alert alert-error">

										<strong>ATTENZIONE!</strong> Lo username selezionato non è disponibile poiché
										già in uso.
										<p>Per favore, scegliere uno username diverso</p>
									</div>
								</c:if>

								<div class="control-group">
									<div class="controls">

										<button class="btn btn-success" type="submit">Registrati</button>

									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>