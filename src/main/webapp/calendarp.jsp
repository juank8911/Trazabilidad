<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset='utf-8' />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" > -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/metisMenu.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.min.css">
<link rel="stylesheet" href="assets/css/checkbox.css">
<link rel="stylesheet" href="assets/css/coloresInst.css">
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/typography.css">
<link rel="stylesheet" href="assets/css/default-css.css">

<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" href="assets/css/checkbox.css">
<link href='assets/css/fullcalendar/main.css' rel='stylesheet' />



<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js" ></script>
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
<script src="assets/js/fullCalendar/main.js"></script>
<script src="assets/js/fullCalendar/locales-all.js"></script>

<!-- funciones javascript para listado programacion -->
        <script src="assets/js/modalPrograma.js"></script>
<!--          <script src="assets/js/popper.min.js"></script> -->
<link rel="stylesheet" href="assets/css/styles.css">
<!-- full calendario -->
        <script src="assets/js/validaciones.js"></script>

<script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function() {
    	var calendarEl = document.getElementById('CalendarioResi');
    	var Draggable = FullCalendar.Draggable;
		var containerEl = document.getElementById('external-events');

		  new Draggable(containerEl, {
			    itemSelector: '.fc-event',
			    eventData: function(eventEl) {
			      return {
			        title: eventEl.innerText
			      };
			    }
			  });

		
	       var calendar = new FullCalendar.Calendar(calendarEl, {
	        	themeSystem: 'bootstrap',
	        	navLinks: true,
	        	selectable: true,
	        	locale: 'es',
	        	initialView: 'dayGridMonth',
	       headerToolbar: {
	       left: 'prev,next,today',
	       center: 'title',
	       right: 'dayGridMonth,timeGridWeek,timeGridDay'},
	       dateClick: function(info) {
	    	//             alert('fecha seleccionada '+date.format());
	    	//             alert('Clicked on: ' + info.dateStr);
	    	             $('#btnAgendarResi').prop('disabled',false);
	    	             $('#btnModificar').prop('disabled',true);
	    	             $('#btnEliminar').prop('disabled',true);
	    	             $('#Factual').val(info.dateStr);

	    	             cleanForm()
	    	//             $('#txtFactual').val(date.format());
	    	             $('#fullModalCrear').modal();
	    	  },
// 	       dayClick:function (date,jsEvent,view){
// //             alert('fecha seleccionada '+date.format());
// //             alert('Clicked on: ' + info.dateStr);
//             $('#btnAgendarResi').prop('disabled',false);
//             $('#btnModificar').prop('disabled',true);
//             $('#btnEliminar').prop('disabled',true);
//             $('#Factual').val(date.format());

//             cleanForm()
// //             $('#txtFactual').val(date.format());
//             $('#fullModalCrear').modal();
//         },
	       droppable: true, // this allows things to be dropped onto the calendar
	       drop: function(info) {
//	            alert(info.event.title + " was dropped on " + info.event.start.toISOString());
	  			console.log(info);
	  			var txtFactual = info.dateStr;
	  			console.log(info.draggedEl.attributes);
	  			console.log(txtFactual);
	  			var txtPrueba = new Array();
	  			txtPrueba.push(info.draggedEl.attributes.getNamedItem('data-id').value);
	  			console.log(txtPrueba);
	  			
				 $.ajax({
			            type: 'POST',
			            url: 'controlGenerador?action=programaRGuardaGenera',
			            data: {'txtPrueba[]':txtPrueba,'txtFactual':txtFactual,'txtRep':1,'localiza':"btnMod" },
			            statusCode: {
			                404: function () {
			                    alert('pagina no encontrada');
			                },
			                500: function () {
			                    alert('Error servidor');
			                }
			            },
			            success: function (datos) {
				            
	// //						$("#exampleModal").find('.modal-body .alert').val("Declaracion enviada con exito")
								if(datos=="true")
									{
									$('.alert').alert();
									}
								else
									{
									$('#alertErr').alert();
									}
//	 						
	// //						$("#exampleModal")/.modal('hide');
//	 		              location.reload('controlGenerador?action=generador');
			            }

			        });	
	  			
//	   			var 1d = info.draggedEl.attributes.NamedNodeMap.getNamedItem();
//	   			window.alert(1d);
	  			
	       },
	     events: [
	    	 <c:forEach var="dato" items="${listaProgramacionC1}" >
	    	 		<c:forEach var="decla" items="${dato.getProg_dec().getDeclaracion_res()}" varStatus="stat">
	    	 		<c:set var="tit" value="${stat.first ? '' : tit } ${decla.getDer_gen_nombre()}" />
	    	 		</c:forEach>
				{
					title: '${dato.getProg_dec().getDec_id()} - ${tit}',
					time:'',
					start: '<fmt:formatDate value="${dato.getPro_fecha_inicial()}" pattern="yyyy-MM-dd" />',
					color: 'green',   // an option!
			         textColor: 'white', // an option!
				         
					},
					
	    	 </c:forEach>
	         ],
	         
	        });
        calendar.render();
    });
    </script>
</head>


<body>
	<%@include file ="/view/generador/sidebarNavbar.jsp" %>
	<!-- page title area start -->
	<div>
		<div class="row align-items-center">
			<div class="col-sm-6">
				<div class="breadcrumbs-area">
					<h4 class="page-title pull-left">Listado de Programación</h4>
					<ul class="breadcrumbs pull-left">
						<li><span>Registrados en el sistema de informacion</span></li>
					</ul>
				</div>
			</div>
			<!-- FIN DE MENU  -->
		</div>
		<button type="button" class="btn btn-success mb-3 ti-plus pull-right">
			<a href="controlGenerador?action=programaCreaGenera"
				class="text-white"> Crear Programación</a>
		</button>
	</div>

	<div class="container">

		<div class="row">

			<div class="col-2">
				<div id='external-events'>
					<p>
						<strong>Residuos Drag</strong>
					</p>
					<c:forEach var="dato" items="${listaResiduosGenId}">
						<button type="button" style="white-space: normal;"
							class="btn btn-success btn-sm btn-block passingID fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event"
							data-toggle="modal" data-whatever="${dato.get(0)}"
							data-nombre="${dato.get(1)}" data-id="${dato.get(0)}"
							data-target="#programResiduo">${dato.get(1)}</button>
					</c:forEach>

				</div>
				<div class="modal fade" id="programResiduo" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">
							<div class="modal-header">

								<h2 class="modal-title" id="myModalLabel">Modal 1</h2>

							</div>
							<div class="modal-body">
								<form method="post"
									action="controlGenerador?action=programaRGuardaGenera"
									class="needs-validation form-control">
									<div class="form-row">

										<!--                                     -----Empieza el Form -->
										<div
											class="form-group row col-md-12 justify-content-md-center">
											<div class="col-md-auto">
												<!-- 												<div class="custom-control custom-checkbox checkbox-lg"> -->
												<!-- 													<input type="checkbox" class="custom-control-input" -->
												<!-- 														name="btnInterna" id="btnInterna" -->
												<!-- 														onchange="interna(this.checked)"> -->
												<!-- 													<label class="custom-control-label" for="btnInterna">Interna</label> -->
												<!-- 												</div> -->
											</div>
										</div>

										<!-- 										<div class="form-group row col-md-12" name="traz" id="traz"> -->
										<!-- 											<div class="col-md-6"> -->
										<!-- 												<label for="txtTrans">Transportador: </label> <select -->
										<!-- 													name="chekTrans" id="chekTrans" class="form-control"> -->
										<!-- 													<option>--------SELECCIONE TRANSPORTADOR--------</option> -->
										<%-- 													<c:forEach items="${listaSedeProgTrans}" var="sed"> --%>
										<%-- 														<option value="${sed.sed_id}"> --%>
										<%-- 															${sed.empresaSed.emp_nombre_comercial} :: --%>
										<%-- 															${sed.sed_nombre} :: ${sed.sed_direccion}</option> --%>
										<%-- 													</c:forEach> --%>

										<!-- 												</select> -->
										<!-- 											</div> -->
										<!-- 											<div class="col-md-6"> -->
										<!-- 												<label for="txtGes">Gestor</label> <select name="txtGes" -->
										<!-- 													id="txtGes" class="form-control"> -->
										<!-- 													<option>-------- SELECCIONE TRANSPORTADOR --------</option> -->
										<!-- 												</select> -->
										<!-- 											</div> -->
										<!-- 										</div> -->
										<div class="form-row align-items-center">
											<div class="form-group col-auto">
												<label for="txtFactual" class="form-label">Fecha: </label> <input
													type="date" name="txtFactual" class="form-control"
													id="txtFactual">
											</div>
											<div class="form-group col-auto
											">
												<label for="txtRep" class="form-label">Se Repite? :</label>
												<select class="form-control" name="txtRep" id="txtRep"
													onChange="mostrarF(this.value);">
													<option value="1" selected>Nunca</option>
													<option value="2">Todos los Dias</option>
													<option value="3">Cada Semana</option>
													<option value="4">Cada Mes</option>
													<option value="5">Cada Año</option>
												</select>
											</div>
										</div>

										<div class="form-row align-items-center">
											<div class="form-group">
												<label for="txtFfinal" id="hastaFL" style="display: none">Hasta
												</label> <input type="date" name="txtFfinal" class="form-control"
													id="fechaActual2" style="display: none" placeholder=""
													value="">
											</div>

										</div>


										<div class="form-col m-3" id="diasSemana"
											style="display: none">
											<div class="form-check form-check col-">
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
									</div>

									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Cerrar</button>
										<button type="submit" class="btn btn-success" type="submit">Crear
											Programacion</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class='col-9' id='calendar-container'>
			<div class="alert alert-danger" id="alertErr" role="alert">
  			This is a danger alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
			</div>
				<div class="alert alert-success" role="alert">
  					Programacion agregada con exito!
				</div>
				
				<div id='CalendarioResi'></div>
			</div>

		</div>
		
		<footer>
                <div class="footer-area">
                    <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                </div>
            </footer>
            <!-- footer area end-->



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
					<script src="assets/js/jquery.multiselect.js" type="text/javascript"></script>
					<script src="assets/js/listSTG.js"></script>
	</div>
</body>
</html>