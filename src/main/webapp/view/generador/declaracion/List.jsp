   
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header/>
<title>sdstrp - Declaracion & Envio</title>


	
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- Kendo -->
<!-- <link rel="stylesheet" href="assets/css/kendo.default-v2.min.css"> -->
<!-- jquery latest version -->
<!-- <script src="assets/js/jquery-1.12.3.min.js"></script> -->


<!-- others css -->
<%-- <script src="<c:url value='/assets/js/kendo/kendo.all.min.js' />"></script> --%>

<link rel="stylesheet" href="assets/css/masterDetail.css">
<!-- modernizr css -->


<!-- <script src="assets/js/kendoV2.all.min.js"></script> -->

<!-- <script src="assets/js/validaciones.js"></script> -->
   </head>

<body>
	<%@include file="../sidebarNavbar2.jsp"%>

	
	<script src="assets/js/masterDetailGene.js"></script>
	<!-- main content area start -->
	<div class="col-9 ml-5">

		<!-- page title area start -->
		<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de declaraciones</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">de residuos</span></li>
                            </ul>
            </div>

		<!-- page title area end -->
		<!-- main content area inicio -->

		<div class="row justify-content-md-center" >
			<div class="row">
					<!-- Server side start -->
					<form method="post" action="controlGenerador?action=enviosBuscarFch" >
						<div class="row g-3">
						<div class="col-md-12 mt-4">	
							<label class="form-label" for="txtGi" >Filtrar declaraciones pendientes de envío por: </label>
							   <select class="form-control" name="txtGi" id="txtGi">
			                     <option value="${idUsuario}" >Fecha de programacion de entrega de los residuos al transportador</option>
			                  </select>
						</div>
						
						<div class="col-md-6 mt-4">
							<label class="form-label" for="txtFIn" id="txtFIn">Desde: </label>
							<input type="date" name="txtFIni" class="form-control" id="txtFIni" required="">
						</div>
						<div class="col-md-6 mt-4">
							 <label for="txtFFin" class="form-label" id="txtFFin">Hasta: </label>
							 <input type="date" name="txtFFin" class="form-control" id="txtFFin" required="">
						</div>
							</div>

						
							<div class="col-md-12 mt-4">	
							<button class="btn btn-success mb-3" type="submit">Buscar</button>					
							</div>

					</form>
				<!-- Server side end -->
			</div>
			<div class="row justify-content-md-center">
			
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
							<tr class="saleRow" id="sale${listdato.dec_id}">
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
							<tr class="itemsRow" >
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
													<tr id="tr${listdato.dec_id}">
	
														
														<td id="td${listdato.dec_id}">${deca.der_gen_nombre} 
														<input  type="hidden"  value=" ${deca.der_id}" id="idDeclaRes" name="idDeclaRes[]" />
														</td>
														<td id="td${listdato.dec_id}"><select id="tipEmbalaje" name="tipEmbalaje[]"
															class="form-select sm-2" required id="tipEmbalaje" >
																<option value="${deca.tipoEmbDec.tem_id}">${deca.tipoEmbDec.tem_nombre}</option>
																<c:forEach var="dato" items="${listaTipoEmbalaje}">
																	<option value="${dato.tem_id}">${dato.tem_nombre}</option>
																</c:forEach>
														</select>
														<input type="hidden"
															value="${deca.der_declaracion}" name="idDecla[]" id="idDecla "/>
														</td>
														<td id="td${listdato.dec_id}"><input type="number" name="txtCantEmb[]"
														id="txtCantEmb" class="form-control" ></td>
															
														<td id="td${listdato.dec_id}"><select id="tipEmpaque" name="tipEmpaque[]"
															class="form-select sm-2" required id="tipEmpaque">
																<option value="${deca.tipoEmpDec.tep_id}">${deca.tipoEmpDec.tep_nombre}</option>
																<c:forEach var="dato1" items="${listaTipoEmpaque}">
																	<option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
																</c:forEach>
														</select></td>
														<td id="td${listdato.dec_id}"> <input type="number" name="txtCantEmpq[]"
														id="txtCantEmpq" class="form-control" >
														
							
															
														<td id="td${listdato.dec_id}"><input type="number" required name="txtCantPeso[]"
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
			</div>
	
			
					<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Enviar
							Declaracion</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
							<div class="alert alert-success alert-dismissable" role="alert">
 				 			Declaracion enviada correctamente
							</div>
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

		<demo:footer/>
</body>

</html>