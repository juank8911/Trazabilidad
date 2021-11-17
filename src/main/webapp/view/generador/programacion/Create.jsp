
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header/>
<title>sdstrp - Crea Programacion</title>
<link rel="stylesheet" href="assets/css/checkbox.css" >
<script src="assets/js/listSTG.js"></script>
<script src="assets/js/validaciones.js"></script>
</head>

<body>
	<%@include file="../sidebarNavbar2.jsp"%>
	<!-- main content area start -->
	<div class="col-10">
	<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Crear de Programación</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">configuradas de recogidas de residuos</span></li>
                            </ul>
            </div>

		<!-- page title area end -->
		<!-- main content area inicio -->
		<br>
		<div class="row justify-content-md-center">
				<!-- Server side start -->


	<form method="post" action="controlGenerador?action=programaRGuardaGenera" class="needs-validation form-control">
							
						
						<div class="row justify-content-md-center">
					<div class="col-md-auto">
						<div class="custom-control custom-checkbox checkbox-lg">
							<input type="checkbox" class="custom-control-input"
								name="btnInterna" id="btnInterna" onchange="interna(this.form.btnInterna.checked)"> <label
								class="custom-control-label" for="btnInterna">Interna</label>
						</div>
					</div>
						</div>
						
					<div class="row row-cols-2" name="traz" id="traz">
						<div class="col-md-6">
							<label for="txtTrans">Transportador: </label>
							<select
								name="chekTrans" id="chekTrans" class="form-control">
								<option>--------SELECCIONE TRANSPORTADOR--------</option>
								<c:forEach items="${listaSedeProgTrans}" var="sed">
								<option value="${sed.sed_id}">
								 ${sed.empresaSed.emp_nombre_comercial} :: ${sed.sed_nombre} :: ${sed.sed_direccion} 
								 </option>
								</c:forEach>
								
							</select>
						</div>
						<div class="col-md-6">
							<label for="txtGes">Gestor</label> 
							<select name="txtGes" id="txtGes" class="form-control">
								<option>-------- SELECCIONE TRANSPORTADOR --------</option>
							</select>
						</div>
					</div>
					
					<div class="row justify-content-md-center m-3">
					<div class="form-group col-md-8">
								<label for="txtPrueba" class="form-label">Residuos</label> 
								<select class="form-select form-select-lg mb-6" name="txtPrueba[]" id="txtPrueba" multiple aria-label="multiple select example" disabled="">
									<c:forEach var="dato" items="${listaResiduosGenId}">
										<option value="${dato.get(0)}">${dato.get(1)}</option>
									</c:forEach>
								</select>						
					</div>
					</div>
					
					<div class="row row-cols-2">

								<div class="form-group col-md-5">
  								<label for="txtFactual" class="form-label">Fecha: </label>
  								<input type="date" name="txtFactual" class="form-control" id="txtFactual" placeholder="">
								</div>
								
								<div class="form-group col-md-5">
								<label for="txtRep" class="form-label">Se Repite? :</label>
								<select class="form-control" name="txtRep" onChange="mostrarF(this.value);">
								<option value="1">Nunca</option>
								<option value="2">Todos los Dias</option>
								<option value="3">Cada Semana</option>
								<option value="4">Cada Mes</option>
								<option value="5">Cada Año</option>
							</select>
								</div>


					</div>
					
					<div class="form-row m-2">
						<div class="form-grup">														
							<label for="txtFfinal" id="hastaFL"
								style="display: none">Hasta </label>
							<input type="date" name="txtFfinal" class="form-control"
								id="fechaActual2" style="display: none" placeholder="" value="">
						</div>
											
					</div>
					

					<div class="form-row m-3" id="diasSemana" style="display: none">
						<div class="form-check form-check-inline col-md-12">
							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnLunes" id="btnLunes"> <label
									class="custom-control-label" for="btnLunes">Lunes</label>
							</div>

							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnMartes" id="btnMartes"> <label
									class="custom-control-label" for="btnMartes">Martes</label>
							</div>


							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnMiercoles" id="btnMiercoles"> <label
									class="custom-control-label" for="btnMiercoles">Miercoles</label>
							</div>


							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnJueves" id="btnJueves"> <label
									class="custom-control-label" for="btnJueves">Jueves</label>
							</div>

							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnViernes" id="btnViernes"> <label
									class="custom-control-label" for="btnViernes">Viernes</label>
							</div>


							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnSabado" id="btnSabado"> <label
									class="custom-control-label" for="btnSabado">Sabado</label>
							</div>


							<!-- 														------------------------------ -->
							<div class="custom-control custom-checkbox checkbox-xl">
								<input type="checkbox" class="custom-control-input"
									name="btnDomingo" id="btnDomingo"> <label
									class="custom-control-label" for="btnDomingo">Domingo</label>
							</div>

						</div>
					</div>




					<button class="btn btn-success mb-3" type="submit">Crear Programacion</button>
					<button class="btn btn-success mb-3" type="submit">
						<a href="controlGenerador?action=listaGestorProg" class="text-white">Cancelar</a>
					</button>
					&nbsp;
				</form>

			</div>
			<!-- Server side end -->
		<!-- main content area end -->
	</div>
	<demo:footer/>
</body>

</html>
