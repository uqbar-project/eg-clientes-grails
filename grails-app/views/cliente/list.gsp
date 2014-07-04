<%@ page import="ar.edu.clientes.Cliente"%>
<%@ page import="ar.edu.clientes.converters.Conversor"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
</head>
<body>
	<div style="width: 90%; padding: 15pt;">
		<div class="clearfix content-heading">
			<h2>&nbsp;Clientes</h2>
		</div>

		<div class="accordion" id="accordionPadre">
			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordionPadre" href="#collapseOne">
						Par&aacute;metros de b&uacute;squeda </a>
				</div>
				<div id="collapseOne" class="accordion-body collapse in">
					<div class="accordion-inner">
						<form class="form-search">
							<fieldset>
								<label>Saldo desde:</label> 
								<input type="text" name="desde" id="desde" class="input" placeholder="Desde..." value="${clienteBusqueda?.desde}"> 
								<label>Hasta:</label> 
								<input type="text" class="input" name="hasta" id="hasta" placeholder="Hasta..." value="${clienteBusqueda?.hasta}">
								<button type="submit" class="btn btn-primary">
									<i class="icon-search icon-white">
									</i>
								</button>
							</fieldset>
						</form>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordionPadre" href="#collapseTwo"> Resultados 
						</a>
					</div>
					<div id="collapseTwo" class="accordion-body collapse in">
						<div class="accordion-inner">
							<div id="cliente-libro" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<g:sortableColumn property="nombre"	title="Nombre" />
										<g:sortableColumn property="saldo" title="Saldo" style="text-align: right;"/>
										<g:sortableColumn property="montoCredito" title="Monto de crédito" style="text-align: right;"/>
									</thead>
									<tbody>
										<g:each in="${clientes}" status="i"	var="cliente">
											<g:set var="montoCredito" value="${cliente.montoCredito()}"/>
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td>
													${cliente.nombre }
												</td>
												<td style="text-align: right;">
													<g:if test="${cliente.esMoroso()}">
														<span class="badge badge-important">
														${Conversor.convertir(cliente.saldo())}
														</span>
													</g:if>
													<g:else>
														<span class="badge badge-success">
														Sin deuda
														</span>
													</g:else>
												</td>
												<td style="text-align: right;">
													${montoCredito ? Conversor.convertir(montoCredito) : "Sin línea de crédito" }
												</td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

