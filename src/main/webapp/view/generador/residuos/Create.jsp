 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header/>
<title>sdstrp - Crea Residuo</title>
  </head>
<!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->

<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="shortcut icon" type="image/png" -->
<!-- 	href="assets/images/icon/favicon.ico"> -->
<!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/font-awesome.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/themify-icons.css"> -->
<!-- <link rel="stylesheet" href="assets/css/metisMenu.css"> -->
<!-- <link rel="stylesheet" href="assets/css/owl.carousel.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/slicknav.min.css"> -->
<!-- <!-- amchart css --> -->
<!-- <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" -->
<!-- type="text/css" media="all" /> -->
<!-- <!-- others css --> -->
<!-- <link rel="stylesheet" href="assets/css/typography.css"> -->
<!-- <link rel="stylesheet" href="assets/css/default-css.css"> -->
<!-- <link rel="stylesheet" href="assets/css/styles.css"> -->
<!-- <link rel="stylesheet" href="assets/css/responsive.css"> -->
<!-- <link rel="stylesheet" href="assets/css/coloresInst.css"> -->
<!-- <!-- modernizr css --> -->
<!-- <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script> -->
<!-- <!-- jquery latest version --> -->
<!-- <script src="assets/js/vendor/jquery-2.2.4.min.js"></script> -->
<!--  -->

<!-- </head> -->

<body>

	<%@include file="../sidebarNavbar2.jsp"%>
	<!-- main content area start -->
	<div class="col">
	<div class="main-content">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-7">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Crear Residuo</h4>
						<ul class="breadcrumbs pull-left">
							<li><span> en el sistema de información</span></li>
						</ul>
					</div>
				</div>
				<!-- FIN DE MENU  -->
			</div>
		</div>
		<!-- page title area end -->
		<!-- main content area inicio -->
		<div class="main-content-inner">
			<div class="row">
					<!-- Server side start -->
					<form  method="post" action="controlGenerador?action=Registrar" id="data">
						<div class="row g-3">
						<div class="col-md-12 mt-4">
							<label class="form-label" for="descripcionResiduo" >Descripción:</label> 
							<input type="text" name="txtDescript"
								class="form-control" id="descripcionResiduo"  value="" required="" />
						</div>
							
						<div class="col-md-12 mt-4" >
							<label class="form-label" for="tipResiduo">Corriente Residuo: </label> 
								<select class="form-control" id="tipResiduo" name="tipResiduo" required="">
								<option value="">Seleccione</option>
								<c:forEach var="dato" items="${listTiResiduos}">
									<option value="${dato.tre_id}">${dato.tre_id} :: ${dato.tre_nombre}</option>
								</c:forEach>
							</select>
						</div>

						<div class="col-md-6 mt-4">

							<label class="form-label" for="estadoMateria">Estado de la Materia: </label>
							 <select class="form-control"
								id="tipMateria" name="tipMateria" required>
								<option value="" >Seleccione</option>
								<c:forEach var="dato" items="${listaEstadoMateria}">
									<option value="${dato.ema_id}">${dato.ema_nombre}</option>
								</c:forEach>
							</select> 
						</div>
						
					<div class="col-md-6 mt-4">
							<label for="gestionUbica" class="form-label">Gestion: </label> 
								<select class="form-control" id="gestion"
								name="gestionUbica" onChange="ocultarInterna(this.value);" required>
								<option value="">Seleccione</option>
								<c:forEach var="dato" items="${listaGestionUbicacion}">
									<option value="${dato.id_gestion_ubi}">${dato.nombre_gestion_ubi}</option>
								</c:forEach>
							</select>
						</div>
						
					<div class="col-md-6 mt-4">
							<label class="form-label" for="tipoGestion">Tipo Gestion: </label> 
								<select class="form-control"
								id="tipGestion" name="tipGestion" required="">
								<option value="">Seleccione</option>
								<c:forEach var="dato" items="${listaTipoGestion}">
								<c:choose>
											<c:when test="${dato.id_tip_gestion == 1 && autoGestora == false}">
											<option value="${dato.id_tip_gestion}">${dato.nombre_gestion}</option>
											</c:when>
										<c:otherwise>
            									<option value="${dato.id_tip_gestion}">${dato.nombre_gestion}</option>
        								</c:otherwise>
							   </c:choose>
								
								</c:forEach>
							</select> 
					</div>
					
					<div class="col-md-6 mt-4">
						<label for="peligrosidad" class="form-label">Peligrosidad: </label>
							 <select class="form-control" id="tipPeligro"
								name="tipPeligro" required="">
								<option value="">Seleccione</option>
								<c:forEach var="dato" items="${listaTipoPeligrosidad}">
									<option value="${dato.tpe_id}">${dato.tpe_nombre}</option>
								</c:forEach>
							</select> 
						</div>
						
						<div class="col-md-12 mt-4">	
							<label class="form-label" for="subTipGest">Sub tipo de Gestion: </label>
							  <select class="form-control" id="subTipGest"
								name="subTipGest" required="">
								<option value="" >Seleccione --- Tipo Gestion</option>
							</select>
						</div>
						
						<div class="col-md-6 mt-4">
							<label class="form-label" for="tipEmpa" id="ltipEmpa">Tipo Empaque: </label>
							 <select class="form-control" id="tipEmpa" name="tipEmpa" required="">
								<option value="">Seleccione</option>
								<c:forEach var="dato" items="${listaTipoEmpaque}">
									<option value="${dato.tep_id}">${dato.tep_nombre}</option>
								</c:forEach>
								</select>
						</div>
						<div class="col-md-6 mt-4">
							 <label for="tipoEmbalaje" class="form-label" id="ltipEmbalaje">Tipo Embalaje: </label>
								 <select class="form-control" id="tipEmbalaje" name="tipEmbalaje" required="">
								<option value="" >Seleccione</option>
								<c:forEach var="dato" items="${listaTipoEmbalaje}">
									<option value="${dato.tem_id}">${dato.tem_nombre}</option>
								</c:forEach>
							</select>
						</div>
							</div>

						<div id="mostrarOcultar" class="row">

							<div class="col-md-6 mt-4">

								<label class="form-label" for="i_transpo"
									id="li_transpo">Transportador: </label> 
									<select
									class="form-control" id="i_transpo"
									name="i_transpo" required>
									<option value="">Seleccione</option>
									<c:forEach var="dato" items="${listaEmpTrans}">
										<option value="${dato.emp_id}">${dato.emp_nombre_comercial}</option>
									</c:forEach>
								</select>
								 </div>
								 
								 <div class="col-md-6 mt-4">
								 <label for="sedeTrans" class="form-label " id="lsedeTransp">
									Sede: </label> <select class="form-control "
									id="sedeTransp" name="sedeTransp" required>
									<option value="" >Seleccione</option>
								</select>
								 </div>
								 
								<div class="col-md-6 mt-4">
								<label class="form-label" for="gestor" id="li_Gestor">Gestor:</label> 
								<select class="form-control" id="i_Gestor" name="i_Gestor" required>
									<option value="">Seleccione</option>
									<c:forEach var="dato" items="${listaEmpresaGestor}">
										<option value="${dato.emp_id}">${dato.emp_nombre_comercial}</option>
									</c:forEach>
								</select>
								</div>
								<div class="col-md-6 mt-4">
								 <label for="sedeGestor" class="form-label" id="lsedeGestor"> Sede: </label>
								 <select class="form-control"
									id="sedeGestor" name="sedeGestor" required>
									<option value="" >Seleccione</option>
								</select>
							</div>

						</div>
						
							<div class="col-md-12 mt-4">
						<input class="btn btn-success mb-3" type="submit" name="action"
							value="Registrar">							
							</div>

					</form>
				<!-- Server side end -->
			</div>
		</div>
		<!-- main content area end -->
	</div>
	<!-- footer area start-->
		<demo:footer/>
		</div>
</body>

</html>
