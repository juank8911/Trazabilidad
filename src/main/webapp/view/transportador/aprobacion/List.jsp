<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!-- LISTA APROBADOS TRANSPORTADOR -->
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
<script src="assets/js/masterDetail.js"></script>
</head>

<body>

	<%@include file="../sidebarNavbar.jsp"%>
	<!-- main content area start -->
	<div class="main-content">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-7">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Listado de Declaraciones
							pendientes por aprobar</h4>

					</div>
				</div>
				<!-- FIN DE MENU  -->
			</div>
		</div>
		<!-- page title area end -->
		<!-- main content area inicio -->
		<br>


		<div class="container">
			<p>
	<label style="color: green; width: 100%; text-align: left;">${infoMessage}</label>
		</p>
		<p>
	<label style="color: red; width: 100%; text-align: left;">${errorMessage}</label>
		</p>
	
			<table id="dTabla" name="dTabla" rules="rows"
				class="table-condensed table-striped">
				<thead>
					<tr>
						<th  class="label"><input type="checkbox" id="brand"></th>
						<th id="despl" class="label" scope="col">Ver</th>
						<th id="despl" scope="col" class="label">Numero</th>
						<th scope="col" class="label">Informacion</th>
						<th scope="col" class="label">Fecha Declaracion</th>
						<th id="despl" scope="col" class="label"># Residuios</th>
						<th scope="col" class="label">Rechazar</th>
					</tr>
				</thead>
				<tbody>
					<form method="post" action="controlTrans?" id="formDeRe" class="form-control">
						<c:forEach var="listdato" items="${listDeclaTranp}">
							<tr class="saleRow" id="saleRow">
								<td id="thcheck"><input type="checkbox" 
									name="brand[]"></td>
								<td></td>
								<td>${listdato.dec_id}</td>
								<td> <i class="ti-bar-chart-alt"></i> - ${listdato.decSedGen.empresaSed.emp_nombre_comercial}  :: ${listdato.decSedGes.sed_nombre} :: ${listdato.decSedGes.sed_direccion} :: ${listdato.decSedGes.departamento.dept_nombre} :: ${listdato.decSedGes.sedMunic.munic_nombre} <br> 
									 <i class="ti-truck">        </i> - ${listdato.decSedGes.empresaSed.emp_nombre_comercial} :: ${listdato.decSedGen.sed_nombre} :: ${listdato.decSedGen.sed_direccion} :: ${listdato.decSedGen.departamento.dept_nombre} :: ${listdato.decSedGen.sedMunic.munic_nombre}
									 		<input type="hidden" name="declaracion[].delca" value="${listdato.dec_id}"/>	  
							 </td>
								<td><fmt:formatDate
										value="${listdato.prog_dec.pro_fecha_inicial}"
										timeStyle="none" dateStyle="long" /></td>
										<t>${fn:length(listdato.declaracion_res)}</td>
								
								<td id="btons">
									<button type="button" class="btn btn-danger ti-trash" data-id="${listdato.dec_id}" data-fecha="${listdato.prog_dec.pro_fecha_inicial}" data-toggle="modal" data-target="#modalRhT">
									</button>
								</td>
							</tr>
							<tr class="itemsRow">
								<td colspan="7">

									<table class="tbItems table-sm" rules="rows">

										<thead>
											<tr class="label">
												<th >Id</th>
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
											<c:forEach items="${listdato.declaracion_res}" var="decaRes">
												<tr>
													
													<td>${decaRes.der_gen_nombre} <input type="hidden" value="${decaRes.der_declaracion}" name="model[].idDecla" />
													<td>${decaRes.der_gen_nombre} <input type="hidden" value="${decaRes.der_declaracion}" name="model[].idDecla1" /> 
														<input type="hidden" value="${decaRes.der_id}" name="model[].idDeclaRes" />
													</td>
													<td>
													<select id="tipEmbalaje" name="model[].tipEmbalaje"
														class="form-select sm-2" required>
															<option value="${decaRes.tipoEmbDec.tem_id}" selected>${decaRes.tipoEmbDec.tem_nombre}</option>
															<c:forEach var="dato" items="${listaTipoEmbalaje}">
																<option value="${dato.tem_id}">${dato.tem_nombre}</option>
															</c:forEach>
													</select></td>
													<td><input type="number" name="model[].txtCantEmb"
														id="txtCantEmb" class="form-control"
														value="${decaRes.der_gen_numero_embalajes}" readonly></td>
													<td><select id="tipEmpaque" class="form-select"
														name="model[].tipEmpaque" class="form-select sm-2">
															<option value="${decaRes.tipoEmpDec.tep_id}" selected>${decaRes.tipoEmpDec.tep_nombre}</option>
															<c:forEach var="dato1" items="${listaTipoEmpaque}">
																<option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
															</c:forEach>
													</select></td>
													<td><input type="number" required name="model[].txtCantEmpq"
														id="txtCantEmpq" class="form-control sm-2"
														value="${decaRes.der_gen_numero_empaques}" readonly></td>
														
													<td><input type="number" required name="model[].txtCantPeso"
														id="txtCantPeso" class="form-control sm-2"
														value="${decaRes.der_gen_peso_residuo}" readonly></td>
													<td id="btons">
														<button type="button" onclick="editar(this)"
															class="btn btn-success ti-pencil-alt"></button>
													</td>
												</tr>

											</c:forEach>
										</tbody>
									</table>
								</td>
							</tr>
						</c:forEach>
						<c:if test="${not empty listDeclaTranp}">
							<tr>
								<td colspan="7">
									<table id="dTabla">
										<thead>
											<tr>
												<th>
												<input type="hidden" name="declaracion[].arrCheks" id="pCheks"> 
													<div class="form-group">
														<label for="txtEntr" class="labels">Fecha de Recoleccion: </label> 
														<input type="date" class="form-control"
														 id="txtEntr"	name="txtReco" required>
													</div> 
												</th>
												<th>
												<div class="form-group">
												<label for="txtEntr" class="labels">Fecha de Entrega Gestor:</label>
												<input type="date"
													class="form-control" name="txtEntr" required="required">
												</div>
												</th>
												<th>
												  <div class="form-group">
														<label for="txtVhei" class="labels">Vehiculo:</label> 
														<select id="txtVhei" name="txtVhei" class="form-control" class="form-select sm-2" required="required">
															<option value="" selected>Selecione vehiculo</option>
															<c:forEach var="dato1" items="${listaVehiculoTrans}">
																<option value="${dato1.veh_id}">${dato1.veh_id} :: ${dato1.veh_marca} :: ${dato1.veh_modelo}</option>
															</c:forEach>
													</select>
													</div>  
											  </th>
											  <th><button type="button" class="btn btn-success"
														data-toggle="modal" data-target="#exampleModal">Aprobar
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

			<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" id="noCheck" >
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-sm">
						<div class="modal-header">
								<div class="alert alert-danger" role="alert">
									Ninguna Declaracion Seleccionada !!!</div>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>No a seleccionado ninguna Declaracion...</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-su"
								data-dismiss="modal">Seleccionar</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Modale Rechasar decaracion -->
			

	<div class="modal fade bd-example-modal-sm" id="modalRhGe" tabindex="-1" role="dialog" aria-hidden="true">
	 
  	<div class="modal-dialog modal-sm">
    	<div class="modal-content">
    	<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">Rechasar Declaracion</h5>
        </div>
      		<div class="modal-body">
      		<form method="post" action="controlTrans?action=" id="formDeRe" class="form-control">
				<p>Al !RECHASAR! la declaracion la informacion reportada no estara
				disponible para futuras modificaciones. Si esta seguro haga clic
				en "Rechasar" de lo contrario clic en "Cancelar"</p>
			  </form>
			</div>
			<div class="modal-footer">

			</div>		
    </div>
  </div>

</div>

			<!-- Modal Enviar Declaracion -->
			<div class="modal fade" id="exampleModal" tabindex="-2" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Aprobar
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
						<div class="spinner-grow" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" id="envio" class="btn btn-success text-nowrap" onclick="enviar()">
							<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
							<span class="sr-only">Loading...</span>
							Enviar
							</button>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>


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


	<!-- bootstrap 4 js -->

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
            ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
        </script>
	<!-- all line chart activation -->
	<script src="assets/js/line-chart.js"></script>
	<!-- all pie chart -->
	<script src="assets/js/pie-chart.js"></script>
	<!-- others plugins -->
	<script src="assets/js/plugins.js"></script>
<!-- 	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script> -->
		<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>

</html>