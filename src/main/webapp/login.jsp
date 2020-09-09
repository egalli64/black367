<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accedi o registrati</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

<!--	<script type="text/javascript" src="js/login.js" defer></script>	 -->


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
		<div class="row">
			<div class="col-1"></div>

			<div class="col" id="login-container">
				<form id="login" class="needs-validation" action="/black367/login"> <!--  novalidate ?! -->
				<!-- target="_self" -->
					<div class="form-row">
						<div class="col">
							<h2 id="autentication">ACCEDI</h2>
							<label for="usr" class="labels">Username</label> <input type="text"
								class="form-control" id="usr" placeholder="Username" name="user" required>
							<div class="invalid-feedback">Per favore, inserire uno username.</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<label for="psw" class="labels">Password</label> <input type="password" id="psw"
								class="form-control" name="password" aria-describedby="passwordHelpBlock"
								placeholder="Password" required>
							<div class="invalid-feedback">Inserire una password valida.</div>
							<small id="passwordHelpBlock" class="form-text text-muted"> La password
								deve essere lunga almeno 8 caratteri, contenere almeno un numero, un carattere
								minuscolo e un carattere maiuscolo. </small>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<!--                            <div class="custom-control custom-switch">
                                	<input type="checkbox" class="custom-control-input" id="customSwitch1">
                                	<label class="custom-control-label" for="customSwitch1">Toggle this switch element</label>
                              	</div>
-->
							<br> <small class="form-text text-muted"> Si vuole effettuare
								l'accesso come amministratori del sito? <span> <input type="checkbox"
									id="check-admin" value="Si"> <label for="check-admin"
									id="check-admin-label" class="labels">Si</label>
							</span>
							</small>
						</div>
					</div>

					<button class="btn btn-primary" type="submit">LOGIN</button>
				</form>
			</div>

			<div class="col" id="registration-container">
				<form id="registration" class="needs-validation" action="/black367/index_bis.jps"
					target="_self" novalidate>
					<div class="form-row">
						<div class="col">
							<h2 id="autentication">REGISTRATI</h2>
							<label for="nome" class="labels">Nome</label> <input type="text"
								class="form-control" id="nome" placeholder="Nome" required>
							<div class="invalid-feedback">Campo necessario</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<label for="cognome" class="labels">Cognome</label> <input type="text"
								class="form-control" id="cognome" placeholder="Cognome" required>
							<div class="invalid-feedback">Campo necessario</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<label for="data" class="labels">Data di nascita</label> <input type="date"
								class="form-control" id="data" placeholder="03/12/1993" required>
							<div class="invalid-feedback">Campo necessario</div>
						</div>
						<div class="col" id="sesso-div">
							<label for="sesso" class="labels">Sesso</label>
							<div id="sesso">
								<input type="radio" name="sesso" id="sesso-m" required> <label
									for="sesso-m" class="labels">M</label> <input type="radio" name="sesso"
									id="sesso-f" required> <label for="sesso-f" class="labels">F</label>
							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<label for="indirizzo" class="labels">Indirizzo</label> <input type="text"
								class="form-control" id="indirizzo" placeholder="Via Roma 1" required>
							<div class="invalid-feedback">Campo necessario</div>
						</div>
						<div class="col">
							<label for="cap" class="labels">CAP</label> <input type="text" class="form-control"
								id="cap" placeholder="40100" required>
							<div class="invalid-feedback">Campo necessario</div>
						</div>
						<div class="col">
							<label for="citta" class="labels">Città</label> <input type="text"
								class="form-control" id="citta" placeholder="Bologna" required>
							<div class="invalid-feedback">Campo necessario</div>
						</div>
					</div>
					<div class="form-row">
						<!--    inserire form control per email     -->
						<div class="col">
							<label for="email" class="labels">E-mail</label> <input type="email"
								class="form-control" id="email" placeholder="mario.rossi@gmail.com" required>
							<div class="invalid-feedback">Inserire una email valida.</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<label for="usr-reg" class="labels">Username</label> <input type="text"
								class="form-control" id="usr-reg" placeholder="Username" required>
							<div class="invalid-feedback">Per favore, inserire uno username.</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<label for="psw-reg" class="labels">Password</label> <input type="password"
								id="psw-reg" class="form-control" aria-describedby="passwordHelpBlock"
								placeholder="Password" required>
							<div class="invalid-feedback">Inserire una password valida.</div>
							<small id="passwordHelpBlock" class="form-text text-muted"> La password
								deve essere lunga almeno 8 caratteri, contenere almeno un numero, un carattere
								minuscolo e un carattere maiuscolo. </small>
						</div>
					</div>


					<button class="btn btn-primary" type="submit">REGISTRATI</button>
				</form>
			</div>

			<div class="col-1"></div>
		</div>
	</div>


</body>
</html>