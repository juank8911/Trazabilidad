<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<demo:header/>
<title>sdstrp - Listado de Aprobados</title>
<link rel="stylesheet" href="assets/css/masterDetail.css">
<script src="assets/js/masterDetail.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
</head>

<!-- amchart css -->

<!-- others css -->
<!-- modernizr css -->



<!-- jquery latest version -->

</head>

<body>

	<%@include file="../sidebarNavbar2.jsp"%>
	<!-- main content area start -->
	<div class="col-9 ml-5">

<div class="row justify-content-md-center">
						<div class="row">
                            <h4 class="page-title pull-left">Listado de Declaraciones</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">pendientes por aprobar</span></li>
                            </ul>
                            
            			</div>            			

 </div>        			



		<div class="row justify-content-md-center">
	<label style="color: green; width: 100%; text-align: left;">${infoMessage}</label>
	<label style="color: red; width: 100%; text-align: left;">${errorMessage}</label>
	
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
								<td> <i class="fas fa-file-import"></i> - ${listdato.decSedGen.empresaSed.emp_nombre_comercial}  :: ${listdato.decSedGen.sed_nombre} :: ${listdato.decSedGen.sed_direccion} :: ${listdato.decSedGen.departamento.dept_nombre} :: ${listdato.decSedGen.sedMunic.munic_nombre} <br> 
									 <i class="fa fa-industry">        </i> - ${listdato.decSedGes.empresaSed.emp_nombre_comercial} :: ${listdato.decSedGes.sed_nombre} :: ${listdato.decSedGes.sed_direccion} :: ${listdato.decSedGes.departamento.dept_nombre} :: ${listdato.decSedGes.sedMunic.munic_nombre}
									 		<input type="hidden" name="declaracion[].delca" value="${listdato.dec_id}"/>	  
							 </td>
								<td><fmt:formatDate
										value="${listdato.prog_dec.pro_fecha_inicial}"
										timeStyle="none" dateStyle="long" />
								</td>
										
										<td>${fn:length(listdato.declaracion_res)}</td>
								
								<td id="btons">
									<button type="button" class="btn btn-danger fas fa-trash" data-bs-id="${listdato.dec_id}" data-bs-fecha="${listdato.prog_dec.pro_fecha_inicial}" data-toggle="modal" data-target="#modalRhGe">
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
														
													<td>
													<select id="tipEmpaque" class="form-select"
														name="model[].tipEmpaque" class="form-select sm-2">
															<option value="${decaRes.tipoEmpDec.tep_id}" selected>${decaRes.tipoEmpDec.tep_nombre}</option>
															<c:forEach var="dato1" items="${listaTipoEmpaque}">
																<option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
															</c:forEach>
													</select>
													</td>
													
													<td><input type="number" required name="model[].txtCantEmpq"
														id="txtCantEmpq" class="form-control sm-2"
														value="${decaRes.der_gen_numero_empaques}" readonly></td>
														
													<td><input type="number" required name="model[].txtCantPeso"
														id="txtCantPeso" class="form-control sm-2"
														value="${decaRes.der_gen_peso_residuo}" readonly></td>
													<td id="btons">
														<button type="button" data-bs-status="read" id="btnedi" 
															class="btn btn-success fas fa-pencil-alt" data-stado="read"></button>
<!-- 															onclick="editar(this,event)" -->
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
      		
				<p>Al !RECHASAR! la declaracion la informacion reportada no estara
				disponible para futuras modificaciones. Si esta seguro haga clic
				en "Rechasar" de lo contrario clic en "Cancelar"</p>
			 
			</div>
			<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        				<button type="button" id="btnModRech" class="btn btn-danger">Rechasar</button>
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
						<div class="spinner-grow" hidden="" role="status">
							<span class="sr-only">Loading...</span>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" id="envio" class="btn btn-success text-nowrap" onclick="enviar()">
							<span class="spinner-border spinner-border-sm" role="status" hidden="" aria-hidden="true"></span>
							<span class="sr-only">Loading...</span>
							Enviar
							</button>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

<demo:footer/>


</body>

</html>