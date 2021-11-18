<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header/>
<title>sdstrp - Programacion</title>
<link rel="stylesheet" href="assets/css/checkbox.css">
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<link href='assets/css/fullcalendar/main.css' rel='stylesheet' />

<script src="assets/js/bootstrap.bundle.js" ></script>
<script src="assets/js/fullCalendar/main.js"></script>
<script src="assets/js/fullCalendar/locales-all.js"></script>

<!-- funciones javascript para listado programacion -->
        <script src="assets/js/modalPrograma.js"></script>


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
	        	editable: true,
	            eventReceive: function(info) {
	                console.log('event received!', info.event);
	              },
	        	selectable: true,
	        	locale: 'es',
	        	initialView: 'dayGridMonth',
	       headerToolbar: {
	       left: 'prev,next,today',
	       center: 'title',
	       right: 'dayGridMonth,timeGridWeek,timeGridDay'},
	       dateClick: function(info) {
	    	//             alert('fecha seleccionada '+date.format());
	    	            alert('Clicked on: ' + info.dateStr);
	    	             $('#btnAgendarResi').prop('disabled',false);
	    	             $('#btnModificar').prop('disabled',true);
	    	             $('#btnEliminar').prop('disabled',true);
	    	             $('#Factual').val(info.dateStr);
// 	    	             cleanForm()
	    	//             $('#txtFactual').val(date.format());
	    	             $('#fullModalCrear').modal();
	    	  },

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
	<%@include file ="/view/generador/sidebarNavbar2.jsp" %>
	<!-- page title area start -->
	<div class="col-9">
		
		<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Programación</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Registrados en el sistema de informacion</span></li>
                            </ul>
            			</div>


		<div class="row justify-content-md-center">
				<a href="controlGenerador?action=programaCreaGenera" id="btnfloat" class="float">
				<i class="fa fa-plus my-float"></i>
				</a>
			<div class="col-2">
				<div id='external-events'>
					<p>
						<strong>Mis residuos</strong>
					</p>
					<c:forEach var="dato" items="${listaResiduosGenId}">
						<button type="button" style="white-space: normal;"
							class="btn btn-success btn-sm btn-block passingID fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event"
							data-toggle="modal" data-whatever="${dato.get(0)}"
							data-nombre="${dato.get(1)}" data-id="${dato.get(0)}"
							data-target="#programResiduo">${dato.get(1)}</button>
					</c:forEach>

				</div>
				</div>

			<div class='col-9' id='calendar-container'>
			<p>Calendar</p>				
				<div id='CalendarioResi'></div>
			</div>

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
										<div class="form-group row col-md-12 justify-content-md-center">
											<div class="col-md-auto">
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
									</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				</div>
<demo:footer/>
</body>
</html>