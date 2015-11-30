<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>BootStrap</title>
	<!-- Latest compiled and minified CSS -->
	<%@ include file="htmlComun/head_common.html" %>
	<!--<jsp:include page="htmlComun/head_common.html" />-->
</head>
<body>
	<%@ include file="htmlComun/cabecera.html" %>
	<div class="container cuerpo">
		<div class="row top17">
			<div class="col-xs-12">
				<%@ include file="htmlComun/carrusel.html" %>
			</div>
		</div>
		<div class="row top15">
			<div class="col-xs-12 "><h1>"AL MAL TIEMPO BUENOS PRECIOS"</h1></div>
		</div>
		<div class="row top30">
			<div class="col-xs-5">
				<img src="img/solecito.png">
			</div>
			<div class="col-xs-7">
				<h2>Somos lideres en el sector</h2>
				<p class="primeralinea5">Construcciones y Servicios Luis Felipe Sereno S.L. es una empresa con <b>más de 30 años de experiencia en el sector</b> de la construcción, sólida, dinámica y actualizada a los nuevos tiempos en los que vivimos. Nuestro mayor orgullo es la satisfacción de nuestros clientes, a los que nunca fallamos.</p>
				<div class="col-xs-9 col-xs-offset-3">
					<blockquote class="blockquote-reverse">
					  <p class="comentarios">“Hemos pasado años duros, pero siempre con positividad y alegría hemos realizado todos los retos que nos propusimos”</p>
					  <footer>Luis Felipe Sereno <cite title="Source Title">Presidente</cite></footer>
					</blockquote>
				</div>

			</div>
		</div>
		<div class="row top50">
			<div class="col-xs-5">
				<img src="img/contrato.png">
			</div>
			<div class="col-xs-7">
				<h2>La felicidad del cliente es lo primero</h2>
				<p class="primeralinea5">Nuestra empresa siempre prima la felicidad del cliente por encima de todo. Todos nuestros clientes nos recomiendan  y consiguen que estemos satisfechos con nuestro trabajo. <b>Con nosotros tu serás feliz.</b></p>
				<div class="col-xs-9 col-xs-offset-3">
					<blockquote class="blockquote-reverse">
					  <p class="comentarios">“Siempre que les necesite, estuvieron a mi disposicion”</p>
					  <footer>M. Ángeles Chamizo <cite title="Source Title">Cliente</cite></footer>
					</blockquote>
				</div>
			</div>
		</div>
		<div class="row top50">
			<div class="col-xs-5">
				<img src="img/sofa.png">
			</div>
			<div class="col-xs-7">
				<h2>Hoy estás más cerca de conseguir tu sueño</h2>
				<p class="primeralinea5">Deja todo en nuestras manos para que no tengas que preocuparte de nada, sólo dinos lo que deseas y nosotros nos encargaremos de hacerlo realidad. Haremos realidad tus sueños de hogar. <b>Confía en nosotros y no te arrepentirás.</b></p>
				<div class="col-xs-9 col-xs-offset-3">
					<blockquote class="blockquote-reverse">
					  <p class="comentarios">“Pensaba que no serían capaz de comprender mi idea de hogar, pero el resultado fue realmente extraordinario”</p>
					  <footer>Juan José Valverde <cite title="Source Title">Cliente</cite></footer>
					</blockquote>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="htmlComun/pie.html" %>
	<%@ include file="htmlComun/footer_common.html" %>
</body>

<%@ include file="htmlComun/modal.html" %>
</html>