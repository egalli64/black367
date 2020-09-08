<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title> Medici </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=PT+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap');
    </style>
    <link rel="stylesheet" href="css/medici1.css">
</head>

<body>
    
    <%@include file="header.html"%>
    
    <h2>I medici che lavorano nelle strutture con noi convenzionate sono professionisti di grande
        esperienza. Di seguito potrà trovare le informazioni relative ai nostri medici, suddivisi per reparto
        di appartenenza: <b><a href="#cardio">cardiologia</a>, <a href="#generale">chirugia generale</a>, <a
                href="#vasco">chirurgia vascolare</a>, <a href="#dermato">dermatologia</a>, <a
                href="#endo">endocrinologia</a>, <a href="#gastro">gastroenterologia</a>, <a href="#gineco">ginecologia
                e ostetricia</a>, <a href="#ocu">oculistica</a>, <a href="#orto">ortopedia</a>,
            <a href="#pneumo">pneumologia</a>, <a href="#psich">psichiatria</a>, <a href="#radio">radiologia</a> e <a
                href="#reumo">reumatologia</a>.</b>
    </h2>
    <div class="reparto">
        <h4 id="cardio"><b>Cardiologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Bacco</td>
                <td>Giulia</td>
                <td>Ospedale Misericordia</td>
                <td><a href="mailto:baccogiulia@gmail.com">baccogiulia@gmail.com</a></td>
            </tr>
            <tr>
                <td>Bacchetti</td>
                <td>Erminio</td>
                <td>Ospedale San Giuseppe </td>
                <td><a href="mailto:bacchettierminio@gmail.com">bacchettierminio@gmail.com</a></td>
            </tr>
            <tr>
                <td>Fabbri</td>
                <td>Maurizio</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:fabbrimaurizio@gmail.com">fabbrimaurizio@gmail.com</a></td>
            </tr>
            <tr>
                <td>Guidini</td>
                <td>Paola</td>
                <td>Ospedale Misericordia</td>
                <td><a href="mailto:guidinipaola@gmail.com">guidinipaola@gmail.com</a></td>
            </tr>
        </tbody>
    </table>
    <div class="reparto">
        <h4 id="generale"><b>Chirurgia generale</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Badia</td>
                <td>Alberto</td>
                <td>Ospedale delle Apuane</td>
                <td><a href="mailto:badiaalberto@gmail.com">badiaalberto@gmail.com</a></td>
            </tr>
            <tr>
                <td>Bagnolo</td>
                <td>Nadia</td>
                <td>Azienda Ospedaliera Universitaria Pisana</td>
                <td><a href="mailto:bagnolonadia@gmail.com">bagnolonadia@gmail.com</a></td>
            </tr>
            <tr>
                <td>Pagliari</td>
                <td>Riccardo</td>
                <td>Azienda Ospedaliera Universitaria Pisana</td>
                <td><a href="mailto:pagliaririccardo@gmail.com">pagliaririccardo@gmail.com</a></td>
            </tr>
            <tr>
                <td>Rossi</td>
                <td>Mario</td>
                <td>Ospedale San Jacopo</td>
                <td><a href="mailto:rossimario@gmail.com">rossimario@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="vasco"><b>Chirurgia vascolare</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Cerutti</td>
                <td>Ettore</td>
                <td>Ospedali Riuniti Livorno</td>
                <td><a href="mailto:ceruttiettore@gmail.com">ceruttiettore@gmail.com</a></td>
            </tr>
            <tr>
                <td>Gennaro</td>
                <td>Jacopo</td>
                <td>Ospedale San Luca</td>
                <td><a href="mailto:gennarojacopo@gmail.com">gennarojacopo@gmail.com</a></td>
            </tr>
            <tr>
                <td>Marchi</td>
                <td>Sofia</td>
                <td>Ospedali Riuniti Livorno</td>
                <td><a href="mailto:marchisofia@gmail.com">marchisofia@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="dermato"><b>Dermatologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Abate</td>
                <td>Giorgia</td>
                <td>Azienda Ospedaliera Universitaria Pisana </td>
                <td><a href="mailto:abategiorgia@gmail.com">abategiorgia@gmail.com</a></td>
            </tr>
            <tr>
                <td>Fiorani</td>
                <td>Marta</td>
                <td>Ospedale Misericordia</td>
                <td><a href="mailto:fioranimarta@gmail.com">fioranimarta@gmail.com</a></td>
            </tr>
            <tr>
                <td>Pesaro</td>
                <td>Edoardo</td>
                <td>Ospedale Misericordia</td>
                <td><a href="mailto:pesaroedoardo@gmail.com">pesaroedoardo@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="endo"><b>Endocrinologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Beschi</td>
                <td>Simone</td>
                <td>Azienda Ospedaliera Universitaria Pisana</td>
                <td><a href="mailto:beschisimone@gmail.com">beschisimone@gmail.com</a></td>
            </tr>
            <tr>
                <td>Poldi</td>
                <td>Giuseppe</td>
                <td>Azienda Ospedaliera Universitaria Pisana</td>
                <td><a href="mailto:poldigiuseppe@gmail.com">poldigiuseppe@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="gastro"><b>Gastroenterologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Accorsi</td>
                <td>Veronica</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:accorsiveronica@gmail.com">accorsiveronica@gmail.com</a></td>
            </tr>
            <tr>
                <td>Finadri</td>
                <td>Carlotta</td>
                <td>Azienda ospedaliero-universitaria senese </td>
                <td><a href="mailto:finadricarlotta@gmail.com">finadricarlotta@gmail.com</a></td>
            </tr>
            <tr>
                <td>Rossi</td>
                <td>Mattia</td>
                <td>Ospedale Misericordia </td>
                <td><a href="mailto:rossimattia@gmail.com">rossimattia@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="gineco"><b>Ginecologia e ostetricia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Cesti</td>
                <td>Valerio</td>
                <td>Ospedale San Jacopo</td>
                <td><a href="mailto:cestivalerio@gmail.com">cestivalerio@gmail.com</a></td>
            </tr>
            <tr>
                <td>Comai</td>
                <td>Giorgia</td>
                <td>Ospedale San Jacopo</td>
                <td><a href="mailto:comaigiorgia@gmail.com">comaigiorgia@gmail.com</a></td>
            </tr>
            <tr>
                <td>Minelli</td>
                <td>Guido</td>
                <td>Azienda ospedaliero-universitaria senese </td>
                <td><a href="mailto:minelliguido@gmail.com">minelliguido@gmail.com</a></td>
            </tr>
            <tr>
                <td>Valli</td>
                <td>Vittoria</td>
                <td>Ospedale Santa Maria Nuova</td>
                <td><a href="mailto:vallivittoria@gmail.com">vallivittoria@gmail.com</a></td>
            </tr>

        </tbody>
    </table>

    <div class="reparto">
        <h4 id="ocu"><b>Oculistica</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Elvezi</td>
                <td>Carla</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:elvezicarla@gmail.com">elvezicarla@gmail.com</a></td>
            </tr>
            <tr>
                <td>Giorgi</td>
                <td>Matteo</td>
                <td>Ospedale San Jacopo</td>
                <td><a href="mailto:giorgimatteo@gmail.com">giorgimatteo@gmail.com</a></td>
            </tr>
            <tr>
                <td>Moris</td>
                <td>Amedeo</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:morisamedeo@gmail.com">morisamedeo@gmail.com</a></td>
            </tr>
            <tr>
                <td>Sabba</td>
                <td>Federica</td>
                <td>Ospedale San Donato</td>
                <td><a href="mailto:sabbafederica@gmail.com">sabbafederica@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="orto"><b>Ortopedia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Allevi</td>
                <td>Marco</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:allevimarco@gmail.com">allevimarco@gmail.com</a></td>
            </tr>
            <tr>
                <td>Alpi</td>
                <td>Fabio</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:alpifabio@gmail.com">alpifabio@gmail.com</a></td>
            </tr>
            <tr>
                <td>Filosi</td>
                <td>Alessio</td>
                <td>Azienda ospedaliero-universitaria senese </td>
                <td><a href="mailto:filosialessio@gmail.com">filosialessio@gmail.com</a></td>
            </tr>
        </tbody>
    </table>
    <div class="reparto">
        <h4 id="pneumo"><b>Pneumologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Erbi</td>
                <td>Valentina</td>
                <td>Ospedale Santa Maria Nuova </td>
                <td><a href="mailto:erbivalentina@gmail.com">erbivalentina@gmail.com</a></td>
            </tr>
            <tr>
                <td>Guidetti</td>
                <td>Matteo</td>
                <td>Ospedale Santo Stefano </td>
                <td><a href="mailto:guidettimatteo@gmail.com">guidettimatteo@gmail.com</a></td>
            </tr>
            <tr>
                <td>Rossi</td>
                <td>Gabriele</td>
                <td>Ospedale Santa Maria Nuova</td>
                <td><a href="mailto:rossigabriele@gmail.com">rossigabriele@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="psich"><b>Psichiatria</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Berti</td>
                <td>Francesca</td>
                <td>Azienda Ospedaliera Universitaria Pisana</td>
                <td><a href="mailto:bertifrancesca@gmail.com">bertifrancesca@gmail.com</a></td>
            </tr>
            <tr>
                <td>Cavani</td>
                <td>Alice</td>
                <td>Azienda Ospedaliera Universitaria Pisana </td>
                <td><a href="mailto:cavanialice@gmail.com">cavanialice@gmail.com</a></td>
            </tr>
            <tr>
                <td>Gabba</td>
                <td>Aldo</td>
                <td>Ospedale San Donato </td>
                <td><a href="mailto:gabbaaldo@gmail.com">gabbaaldo@gmail.com</a></td>
            </tr>
            <tr>
                <td>Padoan</td>
                <td>Vincenzo</td>
                <td>Azienda Ospedaliera Universitaria Pisana </td>
                <td><a href="mailto:padoanvincenzo@gmail.com">padoanvincenzo@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="radio"><b>Radiologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Arosi</td>
                <td>Claudia</td>
                <td>Ospedale San Donato</td>
                <td><a href="mailto:arosiclaudia@gmail.com">arosiclaudia@gmail.com</a></td>
            </tr>
            <tr>
                <td>Baratti</td>
                <td>Cristina</td>
                <td>Azienda ospedaliero-universitaria senese </td>
                <td><a href="mailto:baratticristina@gmail.com">baratticristina@gmail.com</a></td>
            </tr>
            <tr>
                <td>Gennaro</td>
                <td>Annalisa</td>
                <td>Ospedale San Donato </td>
                <td><a href="mailto:gennaroannalisa@gmail.com">gennaroannalisa@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

    <div class="reparto">
        <h4 id="reumo"><b>Reumatologia</b></h4>
    </div>
    <table class="table table-dark">
        <thead>
            <tr>
                <th>Cognome</th>
                <th>Nome</th>
                <th>Struttura ospedaliera</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Bevilacqua</td>
                <td>Martina</td>
                <td>Ospedali Riuniti Livorno</td>
                <td><a href="mailto:bevilacquamartina@gmail.com">bevilacquamartina@gmail.com</a></td>
            </tr>
            <tr>
                <td>Cherubini</td>
                <td>Marcello</td>
                <td>Ospedale San Giuseppe </td>
                <td><a href="mailto:cherubinimarcello@gmail.com">cherubinimarcello@gmail.com</a></td>
            </tr>
        </tbody>
    </table>

</body>




</html>