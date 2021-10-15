<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>sdstrp - Actualiza Residuo</title>
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
<link rel="stylesheet" href="assets/css/coloresInst.css">
<!-- modernizr css -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
<!-- jquery latest version -->
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
<script src="assets/js/listSTG.js"></script>

</head>

    <body>
         <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Actualizacion de Residuo</h4>
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

				<div class="row form-control">


					<!-- Server side start -->


					<form method="post" action="controlGenerador?action=updateResiduo"
						id="data">

						<div class="form-row">
						<input type="hidden" value="${acResiduo.res_id}" name="id_res">
							<label for="descripcionResiduo" class="form-group col-md-2">Descripción:
							</label> <input type="text" name="txtDescript"
								class="form-control form-group col-md-10"
								id="descripcionResiduo" placeholder="" value="${acResiduo.res_nombre}" required="">


							<label class="form-group col-md-2" for="corrienteResiduo">Corriente
								Residuo: </label> <select class="form-control form-group col-md-10"
								id="tipResiduo" name="tipResiduo">
								<option value="${acResiduo.tResiduo.tre_id}" selected="selected">${acResiduo.tResiduo.tre_nombre}</option>
								<c:forEach var="dato" items="${listaTresiduos}">
									<option value="${dato.tre_id}">${dato.tre_id} :: ${dato.tre_nombre}</option>
								</c:forEach>

							</select>
						</div>

						<div class="form-row">

							<label class="form-group col-md-2" for="estadoMateria">Estado de la
								Materia: </label> <select class="form-control form-group col-md-4"
								id="tipMateria" name="tipMateria">
								<option value="${acResiduo.estadoM.ema_id}">${acResiduo.estadoM.ema_nombre}</option>
								<c:forEach var="dato" items="${listaEstadoMateria}">
									<option value="${dato.ema_id}">${dato.ema_nombre}</option>
								</c:forEach>
							</select> 
							
							
							<label for="ubicacion"
								class="col-form-label form-group col-md-2">Gestion: </label> 
								<select
								class="form-control form-group col-md-4" id="gestion"
								name="gestionUbica" onChange="ocultarInterna(this.value);">
								<option value="${acResiduo.gUbicacion.id_gestion_ubi}">${acResiduo.gUbicacion.nombre_gestion_ubi}</option>
								<c:forEach var="dato" items="${listaGestionUbicacion}">
									<option value="${dato.id_gestion_ubi}">${dato.nombre_gestion_ubi}</option>
								</c:forEach>
							</select>

						</div>
												<div class="form-row">


							<label class="form-group col-md-2" for="tipoGestion">Tipo
								Gestion: </label> 
								<select class="form-control form-group col-md-4"
								id="tipGestion" name="tipGestion">
								<option value="${acResiduo.tGestion.id_tip_gestion}">${acResiduo.tGestion.nombre_gestion}</option>
								<c:forEach var="dato" items="${listaTipoGestion}">
									<option value="${dato.id_tip_gestion}">${dato.nombre_gestion}</option>
								</c:forEach>
							</select>
							
							 <label for="peligrosidad"
								class="col-form-label form-group col-md-2">Peligrosidad:
							</label> 
							<select class="form-control form-group col-md-4" id="tipPeligro"
								name="tipPeligro">
								<option value="${acResiduo.tPeligro.tpe_id}">${acResiduo.tPeligro.tpe_nombre}</option>
								<c:forEach var="dato" items="${listaTipoPeligrosidad}">
									<option value="${dato.tpe_id}">${dato.tpe_nombre}</option>
								</c:forEach>
							</select> <label class="form-group col-md-2" for="subTipGest">Sub
								tipo de Gestion: </label> <select
								class="form-control form-group col-md-10" id="subTipGest"
								name="subTipGest">
								<option value="${acResiduo.tManejo.tma_id}" >${acResiduo.tManejo.tma_nombre}</option>

							</select>

						</div>
						<div class="form-row">

							<label class="form-group col-md-2" for="tipoEmpaque"
								id="ltipEmpa">Tipo Empaque: </label> <select
								class="form-control form-group col-md-4" id="tipEmpa"
								name="tipEmpa">
								<option value="${acResiduo.jTipoEmp.tep_id}">${acResiduo.jTipoEmp.tep_nombre}</option>
								<c:forEach var="dato" items="${listaTipoEmpaque}">
									<option value="${dato.tep_id}">${dato.tep_nombre}</option>
								</c:forEach>

							</select> <label for="tipoEmbalaje"
								class="col-form-label form-group col-md-2" id="ltipEmbalaje">Tipo
								Embalaje: </label> <select class="form-control form-group col-md-4"
								id="tipEmbalaje" name="tipEmbalaje">
								<option value="${acResiduo.jTipoEmb.tem_id}">${acResiduo.jTipoEmb.tem_nombre}</option>
								<c:forEach var="dato" items="${listaTipoEmbalaje}">
									<option value="${dato.tem_id}">${dato.tem_nombre}</option>
								</c:forEach>
							</select>
						</div>


						<div id="mostrarOcultar">

							<div class="form-row">

								<label class="form-group col-md-2" for="transporte"
									id="li_transpo">Transportador: </label> <select
									class="form-control form-group col-md-4" id="i_transpo"
									name="i_transpo">
									<option value="${acResiduo.sedeTrans.empresaSed.emp_id}">${acResiduo.sedeTrans.empresaSed.emp_nombre_comercial}</option>
									<c:forEach var="dato" items="${listaEmpTrans}">
										<option value="${dato.emp_id}">${dato.emp_nombre_comercial}</option>
									</c:forEach>
								</select> <label for="sedeTrans"
									class="col-form-label form-group col-md-2" id="lsedeTransp">
									Sede: </label> <select class="form-control form-group col-md-4"
									id="sedeTransp" name="sedeTransp">
									<option value="${acResiduo.sedeTrans.sed_id}">${acResiduo.sedeTrans.sed_nombre}</option>
									<option></option>

								</select> <label class="form-group col-md-2" for="gestor" id="li_Gestor">Gestor:
								</label> <select class="form-control form-group col-md-4" id="i_Gestor"
									name="i_Gestor">
									<option value="${acResiduo.sedeGest.empresaSed.emp_id}">${acResiduo.sedeGest.empresaSed.emp_nombre_comercial}</option>
									<c:forEach var="dato" items="${listaEmpresaGestor}">
										<option value="${dato.emp_id}">${dato.emp_nombre_comercial}</option>
									</c:forEach>

								</select> <label for="sedeTrans"
									class="col-form-label form-group col-md-2" id="lsedeGestor">
									Sede: </label> 
									<select class="form-control form-group col-md-4"
									id="sedeGestor" name="sedeGestor">
									<option value="${acResiduo.sedeGest.sed_id}">${acResiduo.sedeGest.sed_nombre}</option>

								</select>

							</div>

						</div>

						<input class="btn btn-success mb-3" type="submit" name="action" value="actualizar Residuo">						
						<input class="btn btn-success mb-3" type="submit" name="action" value="residuoLeeGenera">
						<td> <button class="btn btn-success mb-3" type="submit">Registrar</button></td>
                                                        <td> <button class="btn btn-success mb-3" type="submit"><a href="controlGenerador?action=empresaListar" class="text-white">Cancelar</a></button></td> 

					</form>

				</div>
				<!-- Server side end -->
			</div>
		</div>
                <!-- main content area end -->
            </div>
                <!-- footer area start-->
                <footer>
                    <div class="footer-area">
                        <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                    </div>
                </footer>
                <!-- footer area end-->
            </div>
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
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
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
