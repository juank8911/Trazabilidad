<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!-- LISTA APROBADOS GESTOR -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>sdstrp - Listado de Aprobados</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="assets/images/icon/favicon.ico">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/metisMenu.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.min.css">
<link rel="stylesheet" href="assets/css/coloresInst.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="assets/css/typography.css">
<link rel="stylesheet" href="assets/css/default-css.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<!-- modernizr css -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
<link rel="stylesheet"
	href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.common.min.css">
<link rel="stylesheet"
	href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.default.min.css">

<!-- jquery latest version -->
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
<script src="assets/js/kendoV2.all.min.js"></script>
<link rel="stylesheet" href="assets/css/masterDetail.css">
<script src="assets/js/masterDetailGes.js"></script>
</head>

<body>
	<%@include file="../sidebarNavbar.jsp"%>
	<div class="main-content">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-7">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Listado de Declaraciones
							pendientes por finalizar</h4>

					</div>
				</div>
				<!-- FIN DE MENU  -->
			</div>
		</div>
		<!-- page title area end -->
		<!-- main content area inicio -->
		<br>


		<div class="container">
		<form method="post" id="formDeRe" class="form-control">
			<table id="dTabla" name="dTabla" rules="rows"
				class="table-condensed table-striped">
				<thead>
					<tr>
						<th id="thcheck"><input type="checkbox" id="brand"></th>
						<th id="despl" scope="col">Ver</th>
						<th id="despl" scope="col">Numero</th>
						<th scope="col">Informacion</th>
						<th scope="col">Fecha Declaracion</th>
						<th id="despl" scope="col"># Residuios</th>
						<th scope="col">Rechazar</th>
					</tr>
				</thead>
				<tbody>
					
						<c:forEach var="listdato" items="${listDeclaGest}">
							<tr class="saleRow" id="saleRow">
								<td id="thcheck"><input type="checkbox" class="brand"
									name="brand[]"></td>
								<td></td>
								<td>${listdato.dec_id}</td>
								<td><i class="ti-bar-chart-alt"></i> -
									${listdato.decSedGen.empresaSed.emp_nombre_comercial}
									::${listdato.decSedGen.sed_nombre} ::
									${listdato.decSedGen.sed_direccion} ::
									${listdato.decSedGen.departamento.dept_nombre} ::
									${listdato.decSedGen.sedMunic.munic_nombre} <br> <i
									class="ti-truck"> </i> -
									${listdato.decSedTran.empresaSed.emp_nombre_comercial} ::
									${listdato.decSedTran.sed_nombre} ::
									${listdato.decSedTran.sed_direccion} ::
									${listdato.decSedTran.departamento.dept_nombre} ::
									${listdato.decSedTran.sedMunic.munic_nombre}</td>

								<td><fmt:formatDate
										value="${listdato.prog_dec.pro_fecha_inicial}"
										timeStyle="none" dateStyle="long" /></td>
								<td>${fn:length(listdato.declaracion_res)}</td>
								<td id="btons">
									<button type="button" class="btn btn-danger ti-trash" data-
										data-id="${listdato.dec_id}"
										data-fecha="${listdato.prog_dec.pro_fecha_inicial}"
										data-toggle="modal" data-target="#modalRhT"></button>
								</td>
							</tr>
							<tr class="itemsRow">
								<td colspan="7">

									<table class="tbItems table-sm" rules="rows">
										<c:forEach items="${listdato.declaracion_res}" var="deca">
											<thead>
												<tr>
													
													<th>Nombre</th>
													<th>Tipo Embalaje</th>
													<th># De Embalajes</th>
													<th>Tipo de Empaques</th>
													<th># De Empaques</th>
													<th>Peso (Kg)</th>
													<th>Editar</th>

												</tr>
											</thead>
											<tbody>

												<tr>
													
													<td>${deca.der_gen_nombre}<input type="hidden"
														value="${deca.der_id}" name="idDeclaRes[]" /> <input
														type="hidden" value="${deca.der_declaracion}"
														name="idDecla[]" />
													</td>
													<td><select id="tipEmbalaje" name="tipEmbalaje[]"
														class="form-select sm-2" required>
															<option value="${deca.tipoEmbDec.tem_id}" selected>${deca.tipoEmbDec.tem_nombre}</option>
															<c:forEach var="dato" items="${listaTipoEmbalaje}">
																<option value="${dato.tem_id}">${dato.tem_nombre}</option>
															</c:forEach>
													</select></td>
													<td><input type="number" name="txtCantEmb[]"
														id="txtCantEmb" class="form-control"
														value="${deca.der_gen_numero_embalajes}" readonly></td>
													<td><select id="tipEmpaque" class="form-select"
														name="tipEmpaque[]" class="form-select sm-2">
															<option value="${deca.tipoEmpDec.tep_id}" selected>${deca.tipoEmpDec.tep_nombre}</option>
															<c:forEach var="dato1" items="${listaTipoEmpaque}">
																<option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
															</c:forEach>
													</select></td>
													<td><input type="number" required name="txtCantEmpq[]"
														id="txtCantEmpq" class="form-control sm-2"
														value="${deca.der_gen_numero_empaques}" readonly></td>
													<td><input type="number" required name="txtCantPeso[]"
														id="txtCantPeso" class="form-control sm-2"
														value="${deca.der_gen_peso_residuo}" readonly></td>
													<td id="btons">
														<button type="button" onclick="editar(this)"
															class="btn btn-success ti-pencil-alt"></button>
													</td>
												</tr>
											<tbody id="res">
												<tr>
													<th colspan="4">Corriente del Residuo</th>
													<th colspan="1">Tipo de Gestion</th>
													<th colspan="3">Tipo sub Gestion</th>
												</tr>
												<tr>
													<td colspan="4">${deca.residuosDecl.tResiduo.tre_id}::
														${deca.residuosDecl.tResiduo.tre_nombre}</td>
													<td colspan="1"><select id="tipGestion"
														class="form-select" name="tipGestion[]"
														onchange="cargaTMan(this)">
															<option
																value="${deca.residuosDecl.tGestion.id_tip_gestion}"
																selected>${deca.residuosDecl.tGestion.nombre_gestion}</option>
															<c:forEach var="dato1" items="${listaTipoGestion}">
																<option value="${dato1.id_tip_gestion}">${dato1.nombre_gestion}</option>
															</c:forEach>
													</select></td>
													<td colspan="3"><select id="tipMan"
														class="form-select" name="tipMan[]">
															<option value="${deca.residuosDecl.tManejo.tma_id}"
																selected>${deca.residuosDecl.tManejo.tma_nombre}</option>
													</select></td>
												</tr>
											</tbody>


										</c:forEach>
										<tr>
											<td colspan="8">
												<div class="form-group">
													<label for="txtObser">Observaciones</label>
													<textarea class="form-control" id="txtObser"
														name="txtObser[]" rows="3"></textarea>
												</div>
											</td>
										</tr>
										</tbody>
									</table>
								</td>

							</tr>
						</c:forEach>
						<c:if test="${not empty listDeclaGest}">
							<tr>
								<td colspan="7">
									<table id="dTabla">
										<thead>
											<tr>
												<th>Fecha de Entrega: <input type="date"
													class="form-control" name="txtEntr" required="required">
												</th>
												<th>Fecha de Gestion: <input type="date"
													class="form-control" name="txtReco" required="required"></th>
												<th><button type="button" class="btn btn-success"
														data-toggle="modal" data-target="#exampleModal">Finalizar
														Declaracion</button></th>
											</tr>
										</thead>
									</table>
								</td>
							</tr>
						</c:if>
					
				</tbody>
			</table>
			</form>
			<!-- Modal de Alerta -->

			<div class="modal fade bd-example-modal-sm" tabindex="-1"
				role="dialog" id="noCheck">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-sm">
						<div class="modal-header">
							<div class="alert alert-danger" role="alert">Ninguna
								Declaracion Seleccionada !!!</div>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>
								No a seleccionado ninguna Declaracion... </br> por favor seleccione
								al menos una.
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-su" data-dismiss="modal">Volver</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Modale Rechasar decaracion -->


			<div class="modal fade bd-example-modal-sm" id="modalRhGe"
				tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
				aria-hidden="true">

				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Rechasar
								Declaracion</h5>
						</div>
						<div class="modal-body">
							<form method="post" action="controlTrans?action=" id="formDeRe"
								class="form-control">
								<p>Al !RECHASAR! la declaracion la informacion reportada no
									estara disponible para futuras modificaciones. Si esta seguro
									haga clic en "Rechasar" de lo contrario clic en "Cancelar"</p>
							</form>
						</div>
						<div class="modal-footer"></div>
					</div>
				</div>

			</div>

			<!-- Modal Enviar Declaracion -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Finalizar
								Declaracion</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body modal-dialog-centered">
							<p>Al crear la declaracion la informacion reportada no estara
								disponible para futuras modificaciones. Si esta seguro haga clic
								en "Aceptar" de lo contrario clic en "Cancelar"</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" id="envio" class="btn btn-success"
								onclick="enviar()">Enviar</button>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>




	<!-- footer area start-->
	<footer>
		<div class="footer-area">
			<p>
				Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos
				los derechos reservados.
			</p>
		</div>
	</footer>
	<!-- footer area end-->

	<!-- page container area end -->

	<!-- jquery latest version -->
	<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/metisMenu.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/jquery.slicknav.min.js"></script>

	<!-- start chart js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
	<!-- start highcharts js -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<!-- start zingchart js -->
	<script src="https://cdn.zingchart.com/zingchart.min.js"></script>
	<script>
		zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
		ZC.LICENSE = [ "569d52cefae586f634c54f86dc99e6a9",
				"ee6b7db5b51705a13dc2339db3edaf6d" ];
	</script>
	<!-- all line chart activation -->
	<script src="assets/js/line-chart.js"></script>
	<!-- all pie chart -->
	<script src="assets/js/pie-chart.js"></script>
	<!-- others plugins -->
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/scripts.js"></script>


</body>

</html>
