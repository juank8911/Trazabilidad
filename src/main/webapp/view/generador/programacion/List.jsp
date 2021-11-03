<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="es">

    <head>
        
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta charset="utf-8">
        <title>sdstrp - Lista Programacion</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/metisMenu.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.min.css">
        <link rel="stylesheet" href="assets/css/checkbox.css">
        <link rel="stylesheet" href="assets/css/coloresInst.css">
        <link rel="stylesheet" href="assets/css/fullcalendar.min.css">
<!--         <link href='assets/js/fullcalendar/main.css' rel='stylesheet' /> -->
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <link rel="stylesheet" href="assets/css/default-css.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link rel="stylesheet" href="assets/css/checkbox.css">
        <!-- modernizr css -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
        
        
        <!-- jquery latest version -->
        
        <script src="assets/js/jquery.min.js"></script>
        
        <!-- funciones javascript para listado programacion -->
        <script src="assets/js/modalPrograma.js"></script>
         <script src="assets/js/popper.min.js"></script>
                <script src="assets/js/bootstrap.min.js"></script>
        <!-- full calendario -->
        <script src="assets/js/moment.min.js"></script>
        
<!-- 		<script src='assets/js/fullcalendar/main.js'></script> -->
        <script src="assets/js/fullcalendar.min.js"></script>
        <script src="assets/js/es.js"></script>
        <script src="assets/js/validaciones.js"></script>
        
        <!-- bootstrap 4 js -->
               

    </head>
    
    <script>
        $(document).ready(function(){
            $('#CalendarioResi').fullCalendar({
                header: {
                    left: 'prev,next, today',
                    center: 'title',
                    right: 'month, basicWeek'
                },
                
                dayClick:function (date,jsEvent,view){
                    //alert('fecha seleccionada'+date.format());
                    $('#btnAgendarResi').prop('disabled',false);
                    $('#btnModificar').prop('disabled',true);
                    $('#btnEliminar').prop('disabled',true);

                    cleanForm()
                    $('#txtFactual').val(date.format());
                    $('#fullModalCrear').modal();
                },

               
                events: [
                    
                <c:forEach var="dato" items="${listaProgramacionC}"> 

                        {
                        title: '${dato.get(2)}',
                        start: '${dato.get(1)}',
                        idRes: '${dato.get(3)}',
                        idProg: '${dato.get(0)}',
                        color:'green',
                        textColor:'white'
                   
                        },
                </c:forEach>
                    
                    
                    ],
                    
                    
                    eventClick:function (calEvent,jsEvent,view){ // calEvent trae la informacion interna del calendario
                    
                    $('#btnAgendarResi').prop('disabled',true);
                    $('#btnModificar').prop('disabled',false);
                    $('#btnEliminar').prop('disabled',false);
                    
                    $('#fullTitulo').html(calEvent.title); // llamar el evento  del titulo
                    $('#txtResi').val(calEvent.idRes); // llamar el evento  del Residuo
                    $('#txtProg').val(calEvent.idProg); // llamar el evento  del Residuo
                    fechaHora= calEvent.start._i.split(' ');
                    $('#txtFechaM').val(fechaHora[0]);
                    $('#txtHora').val(fechaHora[1]);
                    
                    
                    $('#fullModalCrear').modal();
                    
                    },
                    editable:true,
                    eventDrop:function(calEvent){
                        $('#txtProg').val(calEvent.idProg); // llamar el evento  del Residuo
                        fechaHora= calEvent.start.format().split('T');
                        $('#txtFechaM').val(fechaHora[0]);
                        $('#txtHora').val(fechaHora[1]);
                        
        
                        RecolectarGUI();
                        EnviaInfo('programaDropCalendar', arrayAgendar,true);
                        
                    }
                    
            });
        });

    </script>

    <body>
        <%@include file ="../sidebarNavbar.jsp" %>
        <!-- main content area start -->


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
            <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="controlGenerador?action=programaCreaGenera" class="text-white"> Crear Programación</a></button>
        </div>


        <br />
        <br />
        <div class="text-uppercase bg-success mb-3">

            
        </div>
        <h3> </h3>
        <div class="container">
            <div class="row">

                <div class="col-2">
                    <br>


<!-- 							Residuos generados por el generador id -->
                    <c:forEach var="dato" items="${listaResiduosGenId}">
					<button type="button" style="white-space: normal;"
						class="btn btn-outline-success btn-sm btn-block passingID "
						data-toggle="modal" data-whatever="${dato.get(0)}"
						data-nombre="${dato.get(1)}" data-id="${dato.get(0)}" data-target="#programResiduo">${dato.get(1)}
					</button>
				</c:forEach>
                     
                    <div class="modal fade bd-example-modal-lg" id="programResiduo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">

                                <h2 class="modal-title" id="myModalLabel">Modal 1</h2> 

                            </div> 
                            <div class="modal-body"> 
                                <form method="post" action="controlGenerador?action=programaRGuardaGenera" class="needs-validation form-control">
									<div class="form-row">

										<!--                                     -----Empieza el Form -->
										<div class="form-group row col-md-12 justify-content-md-center">
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
										<div class="form-group row col-md-12">

											<div class="form-group col-md-3">
												<label for="txtFactual" class="form-label">Fecha: </label> 
												<input
													type="date" name="txtFactual" class="form-control col-md-7"
													id="txtFactual" plac eholder="">
													<input type="hidden" name="localiza" value="btnResi">
											</div>

											<div class="form-group col-md-5">
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

										<div class="form-row col-md-12">
											<div class="form-grup">
												<label for="txtFfinal" id="hastaFL" style="display: none">Hasta
												</label> <input type="date" name="txtFfinal" class="form-control"
													id="fechaActual2" style="display: none" placeholder=""
													value="">
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
 						</div> 

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                                <button type="submit" class="btn btn-success" type="submit">Crear Programacion</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                </div>

                <!-- Modal Full calendar Agregar, editar, eliminar-->
                <div class="modal fade" id="fullModalCrear" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Residuo: <small id="fullTitulo"></small> </h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                            <form method="post" action="controlGenerador?action=programaRGuardaGenera" class="needs-validation form-control">
                                <div class="form-row col-md-8">

                                    <div class="form-group col-md-2">
                                        <label>Fecha: </label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input class="form-control" type="date" id="txtFactual" name="txtFactual" />
                                        <input type="hidden" id="txtProg" name="txtProg" />
                                        <!--input type="text" id="txtTitle" name="txtTitle" /-->
                                    </div>
                                </div>
                                <div class="form-group row col-md-12" name="traz" id="traz"> -->
											<div class="col-md-5">
												<input type="hidden" name="txtRep" value="1" id="txtRep" />
												<label for="txtTrans">Transportador: </label> 
												<select name="chekTrans" id="chekTrans" class="form-control">
													<option>--------SELECCIONE TRANSPORTADOR--------</option>
													<c:forEach items="${listaSedeProgTrans}" var="sed">
														<option value="${sed.sed_id}">
															${sed.empresaSed.emp_nombre_comercial} ::
															${sed.sed_nombre} :: ${sed.sed_direccion}</option>
													</c:forEach>

												</select>
											</div>
											<div class="col-md-6">
												<label for="txtGes">Gestor</label> 
												<select name="txtGes" id="txtGes" class="form-control" >
													<option>-------- SELECCIONE TRANSPORTADOR --------</option>
												</select>
											</div>
 										</div> 

                                        
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <label for="validationCustom01">Residuo </label>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <select class="form-control" id="txtPrueba" name="txtPrueba[]" required=""  disabled="" multiple>                                           
                                            <c:forEach var="dato" items="${listaResiduosGenId}">

                                                <option value="${dato.get(0)}">${dato.get(1)} </option>

                                            </c:forEach>
                                        </select>
                                        <input type="hidden" name="localiza" value="btnMod">
                                    </div>

                                </div>
								
                            </div>
                            <div class="modal-footer">
                                               
                                                <button type="submit" class="btn btn-success" type="submit">Crear Programacion</button>
                                                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                          </div>
							</form>
                        </div>
                    </div>
                </div>
					
                <script>

                $('#programResiduo').on('show.bs.modal', function (event) {
                	  var button = $(event.relatedTarget) // Button that triggered the modal
                	  var recipient = button.data('whatever') // Extract info from data-* attributes
                	  var id = button.data("id");
                	  var nom = button.data('nombre');
                	  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                	  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                	  var modal = $(this)
                	  modal.find('form').append("<input type='hidden' name='txtPrueba[]' value="+id+">");
                	  modal.find('.modal-title').text('Crear Programacion de: ' + nom)
                	  modal.find('.modal-body #txtResi').val(recipient)
                	})
                             
                    var arrayAgendar;
                             
                             
                    $('#btnAgendarResi').click(function (){
                         RecolectarGUI();
                         EnviaInfo('programaCreaCalendar', arrayAgendar);
                                 
                    });
                             
                    $('#btnEliminar').click(function (){
                         RecolectarGUI();
                         EnviaInfo('programaElimCalendar', arrayAgendar);
  
                    });
                    $('#btnModificar').click(function (){
                         RecolectarGUI();
                         EnviaInfo('programaEditCalendar', arrayAgendar);

                    });
                    function RecolectarGUI(){
                        arrayAgendar={     // se crean variables y se almacenan los eventos asociados al modal en fullCalendar
                            idRes: $('#txtResi').val(),
                            idProg: $('#txtProg').val(),
                            start: $('#txtFactual').val(),
                            title: $('#txtTitle').val(),
                            idGes: $('#txtGestor').val(),
                            idTrans: $('#txtTrans').val(),
                                     
                        };
                    }
                             
                    function EnviaInfo(accion, objEvento,modal){
                        $.ajax({
                            url: 'controlGenerador?action='+accion,
                            type: 'POST',
                            data: objEvento,
                            statusCode: {
                                200: function () {

                                    $('#CalendarioResi').fullCalendar('refetchEvents');
                                    if (!modal) {
                                        $('#fullModalCrear').modal('toggle');
                                    }

                                    location.reload();

                                },
                                error: function () {
                                    alert("error en calendario");
                                }
                            }

                        });


                    }
                    ;
                    function cleanForm() { // limpiar el formulario..!

                        $('#fullTitulo').html(''); // llamar el evento  del titulo
                        $('#txtTrans').val(''); // llamar el evento  del Transportador
                        $('#txtGestor').val(''); // llamar el evento  del Gestor
                        $('#txtResi').val(''); // llamar el evento  del Residuo
                        $('#txtProg').val(''); // llamar el evento  del Residuo

                    }


                </script>

                <div class='col-10' id='calendar-container'>
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
