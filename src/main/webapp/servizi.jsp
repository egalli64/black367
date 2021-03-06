<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Reparti e sevizi</title>
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

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=PT+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap')
	;

@import url(./css/servizi.css);
</style>
</head>

<body>

	<%@include file="header.html"%>
	<div class="row">
		<div class="container-fluid">
			<br>
			<h5>
				<b>Di seguito trova l'elenco dei reparti degli ospedali con noi convenzionati:</b>
			</h5>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<ul>
						<li><b><a href="#cardio">Cardiologia</a></b></li>
						<li><b><a href="#ch">Chirurgia generale</a></b></li>
						<li><b><a href="#gineco">Ginecologia e ostetricia</a></b></li>
						<li><b><a href="#gineco">Chirurgia vascolare</a></b></li>
						<li><b><a href="#ocu">Oculistica</a></b></li>
					</ul>
				</div>
				<div class="col">
					<ul>
						<li><b><a href="#orto">Ortopedia</a></b></li>
						<li><b><a href="#rad">Radiologia</a></b></li>
						<li><b><a href="#psi">Psichiatria</a></b></li>
						<li><b><a href="#gineco">Pneumologia</a></b></li>
						<li><b><a href="#derm">Dermatologia</a></b></li>
					</ul>
				</div>
				<div class="col">
					<ul>
						<li><b><a href="#endo">Endocrinologia</a></b></li>
						<li><b><a href="#gastro">Gastroenterologia</a></b></li>
						<li><b><a href="#reu">Reumatologia</a></b></li>
					</ul>
				</div>
			</div>
			<div>
				<div class="reparto">
					<h4 id="cardio">
						<b>Cardiologia</b>
					</h4>
					<p>Si occupa di prevenzione cardiovascolare, diagnosi e cura delle principali patologie
						cardiovascolari in particolare di: scompenso cardiaco, cardiopatia ischemica, aritmie,
						ipertensione arteriosa, genetica in cardiologia, cardiomiopatie, imaging cardiovascolare. É
						costituita da 6 letti di Terapia Intensiva Coronarica (UCC) e da 18 letti di ricovero
						ordinario (Cardiologia), e da un servizio autonomo di Emodinamica e di Elettrofisiologia. Nei
						6 letti di UCC, tutti dotati di avanzati strumenti di monitoraggio elettrocardiografico ed
						emodinamico, vengono ricoverati pazienti provenienti dal DEU e dagli altri reparti ospedalieri
						di ricovero. Fornisce un servizio di guardia cardiologica attivo 24 ore su 24 e un’equipe di
						Emodinamica attiva o in reperibilità.</p>
				</div>
				<div class="reparto">
					<h4 id="ch">
						<b>Chirurgia generale</b>
					</h4>
					<p>I campi di interesse e di attività della Unità Dipartimentale di Chirurgia generale
						sezione Epato-Bilio-Pancreatica e Digestiva consistono nel trattamento delle patologie
						epato-bilio-pancreatiche, gastriche e colo-rettali. Per tali patologie, i trattamenti
						effettuati seguono le più moderne indicazioni emergenti dalle esperienze mondiali più
						qualificate, sulla scorta dei criteri dei protocolli diagnostico-terapeutici in vigore.
						Inoltre, tali protocolli seguono le attuali indicazioni per l'utilizzo di terapie integrate
						sia preoperatorie che postoperatorie, contribuendo costantemente a studi nazionali ed
						internazionali in collaborazione con l'Unità Operativa di Epatologia, di Oncologia e i Servizi
						di Radiologia ed Endoscopia.</p>
				</div>
				<div class="reparto">
					<h4 id="gineco">
						<b>Ginecologia e ostetricia</b>
					</h4>
					<p>Si occupa di offrire assistenza alle donne in tutte le fasi della vita dall’infanzia,
						all’età fertile, gravidanza compresa, all'età post menopausale.Le principali patologie
						trattate sono in ambito ginecologico, sia medico che chirurgico: la patologia dell’infanzia e
						adolescenza; le patologie della donna in età fertile come endometriosi, patologia infettiva,
						patologia del basso tratto genitale; nella donna in età menopausale e post menopausale, la
						patologia oncologica, la patologia della statica pelvica.È presente un servizio di DaySurgery
						per i piccoli interventi sia ostetrici che ginecologici. In ambito ostetrico l’offerta
						riguarda tutti i trimestri sia nelle donne a basso rischio che nelle donne con patologie pre
						esistenti o insorte in gravidanza.</p>
				</div>
				<div class="reparto">
					<h4 id="vasc">
						<b>Chirurgia vascolare</b>
					</h4>
					<p>La Struttura di Chirurgia Vascolare si occupa della diagnosi e della cura delle
						patologie a carico del sistema circolatorio, nei pazienti che necessitano un trattamento
						chirurgico, endovascolare o ibrido. I Medici dell’Unità Operativa sono impegnati in attività
						di diagnosi e cura sia per i pazienti ricoverati che per i pazienti ambulatoriali. Inoltre
						svolgono consulenze per le altre Unità Operative dell’Ospedale e per il Pronto Soccorso.
						Durante la notte e nei giorni festivi i Medici dell’Unità Operativa garantiscono il servizio
						di pronta disponibilità per le urgenze di interesse chirurgico vascolare.</p>
				</div>
				<div class="reparto">
					<h4 id="ocu">
						<b>Oculistica</b>
					</h4>
					<p>Reparto pecializzato nelle seguenti aree di intervento di cataratta, chirurgia del
						glaucoma, riabilitazione visiva e chirurgia oculistia</p>
				</div>
				<div class="reparto">
					<h4 id="orto">
						<b>Ortopedia</b>
					</h4>
					<p>Si occupa della cura di tutte le patologie traumatiche coinvolgenti gli arti e il bacino
						dall'età pediatrica a quella geriatrica e delle patologie degenerative degli arti come
						l'artrosi dell'anca e del ginocchio, infine delle patologie legate allo sport nel giovane e
						nell'adulto.</p>
				</div>
				<div class="reparto">
					<h4 id="rad">
						<b>Radiologia</b>
					</h4>
					<p>Svolge attività clinico-radiologica finalizzata alla diagnosi e al follow-up di pazienti
						ricoverati entro le 24 ore, con eccezione delle urgenze che vengono espletate in tempo reale</p>
				</div>
				<div class="reparto">
					<h4 id="psi">
						<b>Psichiatria</b>
					</h4>
					<p>Il Servizio Psichiatrico di Diagnosi e Cura è una Unità Operativa dell’Azienda
						Ospedaliera che è anche la sede della Facoltà di Medicina e Psicologia dell’Università di
						Firenze. Il SPDC è impegnato nella cura e nell’assistenza di persone con disturbo psichico
						critico e grave. Garantisce: ricoveri volontari, ricoveri in Trattamento Sanitario
						Obbligatorio (TSO) e attività di consulenza urgente attraverso l’accesso al Pronto Soccorso.</p>
				</div>
				<div class="reparto">
					<h4 id="pneu">
						<b>Pneumologia</b>
					</h4>
					<p>L’Unità Operativa di Pneumologia si occupa delle più importanti patologie respiratorie
						quali, ad esempio, broncopneumopatia cronica ostruttiva (BPCO), asma bronchiale, pneumopatie
						infiltrative diffuse, neoplasie polmonari ed infezioni respiratorie. L’Unità Operativa dispone
						di un servizio di endoscopia respiratoria diagnostica ed interventistica e segue la
						preparazione ed il follow-up dei pazienti da sottoporre a trapianto di polmone. Presso l’Unità
						Operativa di Pneumologia è presente il centro di riferimento nazionale per la cura di asma
						bronchiale e malattie ostruttive croniche indotte da fumo di sigarett.</p>
				</div>
				<div classe="reparto">
					<h4 id="derm">
						<b>Dermatologia</b>
					</h4>
					<p>È Centro di Riferimento Regionale per la Psoriasi e per la Dermatologia Pediatrica.
						Viene inoltre considerato un’importante centro di riferimento per l’oncologia cutanea e per la
						terapia fotodinamica. Presso la Clinica Dermatologica vengono seguite tutte le diverse
						patologie dermatologiche in regime ambulatoriale, di Day-Hospital e di ricovero ordinario. Per
						i ricoveri ordinari sono disponibili letti di degenza ordinaria per adulti attualmente presso
						l’8° piano del Monoblocco Ospedaliero e posti di degenza ordinaria per bambini presso la
						Clinica Pediatrica. All’interno dell’edificio della Clinica Dermatologica vengono svolte le
						attività ambulatoriale, e le attività di degenza diurna per gli adulti mentre l’attività per
						l’età pediatrica dall’equipe dermatologica viene svolta in Clinica Pediatrica.</p>
				</div>
				<div classe="reparto">
					<h4 id="endo">
						<b>Endocrinologia</b>
					</h4>
					<p>’U.O. C. di Endocrinologia si propone come centro di attrazione nazionale per la
						diagnosi e il trattamento delle patologie endocrine. Ad integrazione dell’attività di
						ricovero, sono stati da tempo attivati ambulatori specifici per fornire al paziente assistenza
						di alto livello. L’ambulatorio integrato e il day hospital forniscono analisi specialistiche e
						indagini genetiche atte a identificare i portatori di neoplasie endocrine familiari, di
						neoplasie tiroidee a rischio, di sindrome poliendocrina autoimmune di tipo 1. Le patologie
						tiroidee e del metabolismo osseo si avvalgono di apparecchiature di ultima generazione che
						consentono, ad esempio, con l’elastosonografia valutazioni diagnostiche nella patologia
						nodulare tiroidea, non eseguibili in altri centri.</p>
				</div>
				<div class="reparto">
					<h4 id="gastro">
						<b>Gastroenterologia</b>
					</h4>
					<p>Si occupa di assistenza, diagnosi e cura di pazienti con malattie gastroenterologiche ed
						epatiche acute e croniche, quali: le malattie infiammatorie croniche intestinali, la
						celiachia, le epatopatie alcol/virus correlate e colestatiche, le malattie funzionali e i
						disturbi motori del tratto gastroenterico (reflusso gastroesofageo, acalasia, dispepsia e
						intestino irritabile), l’esofagite eosinofila, le malattie del pancreas, le
						precancerosi/neoplasie del tratto digestivo (gastrite atrofica, esofago di Barrett, tumori
						dell’esofago e dello stomaco, tumori neuro-endocrini, GIST, epatocarcinomi), le malattie rare
						di fegato e di stomaco (M. di Wilson, Emocromatosi e Menetrier) e, recentemente, anche il
						Trapianto Fecale per le malattie da Clostridium Difficile resistente alla terapia
						farmacologica.</p>
				</div>
				<div class="reparto">
					<h4 id="reu">
						<b>Reumatologia</b>
					</h4>
					<p>L’Unità Operativa Complessa di Reumatologia dell’Azienda Ospedaliera di Padova è una
						struttura all’avanguardia nella diagnosi e nella cura delle malattie reumatiche
						muscoloscheletriche, delle connettiviti e delle malattie autoinfiammatorie dell’adulto. La
						struttura è dedicata al trattamento di queste patologie e delle possibili complicazioni che
						interessano non solo le articolazioni ma anche organi vitali (apparato cardiovascolare,
						sistema nervoso, rene, apparato gastrointestinale e respiratorio). Presso l’U.O.C. viene
						svolta una avanzata attività di ricerca clinica e di base e sono in atto collaborazioni con
						prestigiosi centri di ricerca nazionali ed internazionali.</p>
				</div>
			</div>


			<div class="back">
				<h6>
					Torna alla <a href="index.html"><b>home</b></a>
				</h6>
			</div>
		</div>
	</div>
	</div>
</body>