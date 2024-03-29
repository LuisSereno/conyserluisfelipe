<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Modal -->
<div class="modal fade" id="formpresupuesto" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="myModalLabel">Solicita presupuesto</h3>
			</div>
			<div class="modal-body">
				<div class="container">
					<form class="form-horizontal" id="formularioEnvioCorreo" data-toggle="validator" action="/enviarConsulta" post>
						<div class="form-group">
							<div class="col-xs-3 col-sm-2">
								<label for="exampleInputEmail1">Email address</label>
							</div>
							<div class="col-xs-9 col-sm-7 col-md-5 col-lg-3">
								<div class="form-group">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Email" data-error="El formato del email es erróneo" required>
									<span class="glyphicon form-control-feedback" aria-hidden="true" ></span>
									<div class="help-block with-errors"></div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-3 col-sm-2">
								<label for="exampleInputPassword1">Teléfono</label>
							</div>
							<div class="col-xs-9 col-sm-7 col-md-5 col-lg-3">
								<div class="form-group">
									<input type="number" class="form-control" name="telefono"
									id="telefono" placeholder="Teléfono" min="000000000" max="999999999" data-error="El formato del telefono es erróneo">
									<span class="glyphicon form-control-feedback" aria-hidden="true" ></span>
									<div class="help-block with-errors"></div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-3 col-sm-2">
								<label for="exampleTextArea">Consulta</label>
							</div>
							<div class="col-xs-9 col-sm-7 col-md-5 col-lg-3">
								<div class="form-group">
								<textarea class="form-control" id="consulta" name="consulta"
									placeholder="Escriba su consulta aquí..." data-error="Necesitamos su consulta para poder responder" required></textarea>
									<span class="glyphicon form-control-feedback" aria-hidden="true" ></span>
									<div class="help-block with-errors"></div>
								</div>
								<p class="help-block">En menos de 24 horas tendrá su respuesta.</p>
							</div>
						</div>
					</form> 
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-primary" id="enviarConsulta">Enviar</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

	$('form').validator().on('submit', function (e) {
	  if (!e.isDefaultPrevented()) {
			var datosModal=[];
			$.each($('#formularioEnvioCorreo').serializeArray(), function(i, field) {
			    datosModal[field.name] = field.value;
			});
			var params={
		      email:datosModal["email"],
		      telefono:datosModal["telefono"],
		      consulta:datosModal["consulta"]
		      };
		      $.post("/enviarConsulta",params,function(result){
		      	limpiarFormularioClases();
		        toastr.success('Hemos recibido el mensaje, en menos de 24 obtendrá una respuesta', 'Correcto');
		        ga('send', 'event', 'modal-consulta', 'envio-correo', 'enviarConsulta', {'nonInteraction': 1});
		        }).error(function() { 
		        toastr.error('No hemos podido enviar el error porque nuestros servidores están saturados actualmente, espere unos instantes', 'Error')

		       });
	  }
	  return false;

	});

$("#enviarConsulta").on("click", function() {

	$("form").submit();

});

</script>