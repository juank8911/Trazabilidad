<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>sdstrp - Declaracion & Envio</title>
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
<!-- Kendo -->
<link rel="stylesheet" href="assets/css/kendo.default-v2.min.css">
<!-- jquery latest version -->
<!-- <script src="assets/js/jquery-1.12.3.min.js"></script> -->

<!-- jquery latest version -->
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
<!-- others css -->
<script src="<c:url value='/assets/js/kendo/kendo.all.min.js' />"></script>
<link rel="stylesheet" href="assets/css/typography.css">
<link rel="stylesheet" href="assets/css/default-css.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" href="assets/css/masterDetail.css">
<script src="assets/js/masterDetailGene.js"></script>
<!-- modernizr css -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

<script src="assets/js/kendoV2.all.min.js"></script>

<script src="assets/js/validaciones.js"></script>

<!-- <script type="text/javascript" src="assets/js/declajax.js"></script> -->

<body>
	<%@include file="../sidebarNavbar.jsp"%>
	<script src="assets/js/masterDetailGene.js"></script>
	<!-- main content area start -->
	<div class="main-content">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-7">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Listado de declaraciones</h4>
						<ul class="breadcrumbs pull-left">
							<li><span>de residuos</span></li>
						</ul>
					</div>
				</div>
				<!-- FIN DE MENU  -->
			</div>
		</div>
		<!-- page title area end -->
		<!-- main content area inicio -->
		<br>

		<div class="row">
			<div class="col-md-11 container">

			                        <form method="post" action="controlGenerador?action=enviosBuscarFch" class="needs-validation form-control" novalidate="">

			                            <div class="form-row ">
			                              <div class="form-group container">
    											<label for="txtGi">Filtrar declaraciones pendientes de envío por</label>
			                                    <select class="form-control is-valid" name="txtGi" id="txtGi">
			                                        <option value="${idUsuario}" >Fecha de programacion de entrega de los residuos al transportador</option>
			                                    </select>
  											</div>
			                                <input type="hidden" value="${idUsuario}" name="txtG">
										</div>
			                            <div class="form-row container">
			                            	<div class="col col-md-6">
												<div class="form-group">
													<label for="txtFIni">Desde:</label> 
													<input type="date" name="txtFIni" class="form-control" id="txtFIni" placeholder="" value="" required="">																							
												</div>
											</div>
											
											<div class="col col-md-6">
												<div class="form-group">
													<label for="txtFFin">Hasta:</label> 
													<input type="date" name="txtFFin" class="form-control" id="txtFFin" placeholder="" value="" required="">																							
												</div>
											</div>
											<div class="form-row ">
			                                <div class="form-group col-md-5">
			                                    <button class="btn btn-success " type="submit">Buscar</button>
			                                </div>
			                                </div>
			                            </div>
			                        </form>
			</div>

			<div class="container">
			<div class="alert alert-success alert-dismissable" role="alert">
 				 Declaracion enviada correctamente
				</div>
				<table id="dTabla" name="dTabla" rules="rows">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">ID</th>
							<th scope="col">Informacion</th>
							<th scope="col">Fecha</th>
							<th scope="col" id="despl">Residuos</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="listdato" items="${listDeclaHoy}">
							<tr class="saleRow">
								<td></td>
								<td>${listdato.dec_id}</td>
								<td> <i class="ti-truck">    </i> - ${listdato.decSedTran.empresaSed.emp_nombre_comercial} :: ${listdato.decSedTran.sed_nombre} :: ${listdato.decSedTran.sed_direccion} :: ${listdato.decSedTran.departamento.dept_nombre} :: ${listdato.decSedTran.sedMunic.munic_nombre} <br>  
								 <i class="ti-bar-chart-alt"></i> - ${listdato.decSedGes.empresaSed.emp_nombre_comercial} ::${listdato.decSedGes.sed_nombre} :: ${listdato.decSedGes.sed_direccion} :: ${listdato.decSedGes.departamento.dept_nombre} :: ${listdato.decSedGes.sedMunic.munic_nombre}  
									 </td>
								<td><fmt:formatDate
										value="${listdato.prog_dec.pro_fecha_inicial}"
										timeStyle="none" dateStyle="long" /></td>
								<td>${fn:length(listdato.declaracion_res)}</td>
							</tr>
							<tr class="itemsRow">
								<td colspan="5">
									
										<table class="tbItems table-sm" rules="rows" >
												
									<thead>
											
										
												<tr>
													
													<th>Nombre</th>
													<th>Tipo Embalaje</th>
													<th># De Embalajes</th>
													<th>Tipo de Empaques</th>
													<th># De Empaques</th>
													<th>Peso (Kg)</th>

												</tr>
											</thead>
											<tbody id="Item${listdato.dec_id}">
											<c:forEach items="${listdato.declaracion_res}" var="deca">
													<tr id="${listdato.dec_id}">
	
														
														<td>${deca.der_gen_nombre} 
														<input  type="hidden"  value=" ${deca.der_id}" id="idDeclaRes" name="idDeclaRes[]" />
														</td>
														<td><select id="tipEmbalaje" name="tipEmbalaje[]"
															class="form-select sm-2" required id="tipEmbalaje" >
																<option value="${deca.tipoEmbDec.tem_id}">${deca.tipoEmbDec.tem_nombre}</option>
																<c:forEach var="dato" items="${listaTipoEmbalaje}">
																	<option value="${dato.tem_id}">${dato.tem_nombre}</option>
																</c:forEach>
														</select>
														<input type="hidden"
															value="${deca.der_declaracion}" name="idDecla[]" id="idDecla "/>
														</td>
														<td><input type="number" name="txtCantEmb[]"
														id="txtCantEmb" class="form-control" ></td>
															
														<td><select id="tipEmpaque" name="tipEmpaque[]"
															class="form-select sm-2" required id="tipEmpaque">
																<option value="${deca.tipoEmpDec.tep_id}">${deca.tipoEmpDec.tep_nombre}</option>
																<c:forEach var="dato1" items="${listaTipoEmpaque}">
																	<option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
																</c:forEach>
														</select></td>
														<td> <input type="number" name="txtCantEmpq[]"
														id="txtCantEmpq" class="form-control" >
														
							
															
														<td><input type="number" required name="txtCantPeso[]"
															id="txtCantPeso" class="form-control sm-2" ></td>
													</tr>
													
												</c:forEach>
												<tr>
													<td colspan="5"></td>
										 			<td class="boton" id="boton">
										
										 				<button type="button" class="btn btn-success" 
													data-toggle="modal" data-target="#exampleModal" data-id="${listdato.dec_id}" >
														Enviar Declaracion
														</button>
													</td>
													</tr>
											</tbody>
										</table>
									
								</td>
							</tr>
							
						</c:forEach>
						
					<tbody>
				</table>

			</div>

		</div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content"></div>
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Enviar
							Declaracion</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body"></div>
						<p>Al crear la declaracion la informacion reportada no estara
							disponible para futuras modificaciones. Si esta seguro haga clic
							en "Aceptar" de lo contrario clic en "Cancelar"</p>
					</div>
					<div class="modal-footer" id="foot">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" id="envioFin" class="btn btn-success" >
						<span class="spinner-border spinner-border-sm" role="status"  aria-hidden="true"></span>
						<span class="sr-only">Loading...</span>
						Enviar
						</button>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- main content area end -->

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
	</div>
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
                ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
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
