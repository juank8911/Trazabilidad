<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<demo:header>
<title>sdstrp - Actualiza vehiculo</title>
</demo:header>

    <body>
        <%@include file ="../sidebarNavbar.jsp" %>
       
        
            <!-- main content area start -->
           

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Actualiza de Vehiculo</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> inscritas en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                
                <form method="post" action="controlTrans?action=vehiActualizaTransp" class="needs-validation form-control" novalidate="">

                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="example-text-input" class="col-form-label">Tipo de Vehiculo </label>

                                        </div>
                                        <div class="form-group col-md-2">
                                            <select class="form-control is-valid" name="tipoVeh" id="tipVeh">
                                                <option value="${vVehiculo.getV_id_tipoVeh()}">${vVehiculo.getV_tipoVehi()}</option>
                                                <c:forEach var="dato" items="${datosP}">  

                                                    <c:if test="${dato.getVeh_desig_padre() == null}">
                                                        <option value="${dato.getVeh_id_desig()}">${dato.getVeh_designacion()} </option>
                                                    </c:if>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-1">
                                            <label for="example-text-input" class="col-form-label">Designacion*</label>

                                        </div>
                                        <div class="form-group col-md-7">
                                            <select class="form-control is-valid" name="tipDesig">
                                                <option value="${vVehiculo.getV_id_desig()}">${vVehiculo.getV_desig()} </option>
                                            </select>
                                        </div>
                                    </div>
                                            <input type="hidden" name="txtId" value="${vVehiculo.getV_id()}">
                                    
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Placa</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtPlaca"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_placa()}" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Placa (Semi) Remolque </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtPlacaSemi"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_placaR()}" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Numero de Chasis</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtChasis"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_chasis()}" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Capacidad(t)*</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtCapacidad"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_capacidad()}" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Marca *</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtMarca"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_marca()}" required="">
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Linea </label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtLinea"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_linea()}" required="">
                                        </div>

                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Modelo *</label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <input type="text" name="txtModelo"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_modelo()}" required="">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-5">
                                            <label for="validationCustom01">Características de peligrosidad de los residuos a transportar* </label>
                                        </div>
                                        <div class="form-group col-md-7">
                                            <select class="custom-select is-valid" name="txtPeligrosidad[]" multiple>
                                                <option value="${vVehiculo.getV_pelig()}"></option>
                                                <option value="CORR">Corrosivo</option>
                                                <option value="EXPL">Explosivo</option>
                                                <option value="INFE">Infeccioso o Riesgo Biologico</option>
                                                <option value="INFL">Inflamable</option>
                                                <option value="REAC">Reactivo</option>
                                                <option value="RADI">Radioactivo</option>
                                                <option value="TOXI">Toxico</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-row">


                                        <div class="form-group col-md-2">
                                            <label for="validationCustom01">Tipo de Documento </label>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <select class="form-control is-valid" name="txtTipDocu">
                                                <option value="${vVehiculo.getV_tipoDoc()}"> 
                                                    <c:if test="${vVehiculo.getV_tipoDoc() == '1'}">
                                                        Cedula Ciudadania
                                                    </c:if>
                                                    <c:if test="${vVehiculo.getV_tipoDoc() == '2'}">
                                                        Cedula Extranjeria
                                                    </c:if>
                                                    <c:if test="${vVehiculo.getV_tipoDoc() == '3'}">
                                                        Numero de identificacion tributaria
                                                    </c:if>
                                                
                                                </option>
                                                <option value="1">Cedula Ciudadania</option>
                                                <option value="2">Cedula Extranjeria</option>
                                                <option value="3">Numero de identificacion tributaria</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="example-text-input" class="col-form-label">Nro. Documento </label>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <input type="text" name="txtNdocumento"class="form-control is-valid" id="validationCustom02" placeholder="" value="${vVehiculo.getV_numeDoc()}" required="">
                                        </div>

                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <label for="validationCustom01">Nombre o Razon social (Propietario) *</label>
                                        </div>
                                        <div class="form-group col-md-9">
                                            <input type="text" name="txtNomPro" class="form-control is-valid" id="validationCustom02"  value="${vVehiculo.getV_propie()}" required="">
                                        </div>  
                                    </div>

                                    <br />
                                    <div class="form-row form-control">

                                        <button class="btn btn-success " type="submit">Actualizar Vehiculo</button>
                                        <button class="btn btn-success "><a href="controlTrans?action=vehiculoTransp" class="text-white">Cancelar</a></button>
                                    </div>


                                </form>
                
                <!-- footer area start-->
                <footer>
                    <div class="footer-area">
                        <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                    </div>
                </footer>
                <!-- footer area end-->
            
            <!-- page container area end -->
            <!-- offset area start -->
            <div class="offset-area">
                <div class="offset-close"><i class="ti-close"></i></div>
                <ul class="nav offset-menu-tab">
                    <li><a class="active" data-toggle="tab" href="#activity">Activity</a></li>
                    <li><a data-toggle="tab" href="#settings">Settings</a></li>
                </ul>
                <div class="offset-content tab-content">
                    <div id="activity" class="tab-pane fade in show active">
                        <div class="recent-activity">
                            <div class="timeline-task">
                                <div class="icon bg1">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-check"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Added</h4>
                                    <span class="time"><i class="ti-time"></i>7 Minutes Ago</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>You missed you Password!</h4>
                                    <span class="time"><i class="ti-time"></i>09:20 Am</span>
                                </div>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Member waiting for you Attention</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="ti-signal"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>You Added Kaji Patha few minutes ago</h4>
                                    <span class="time"><i class="ti-time"></i>01 minutes ago</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg1">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Ratul Hamba sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Hello sir , where are you, i am egerly waiting for you.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg2">
                                    <i class="fa fa-exclamation-triangle"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="fa fa-bomb"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                            <div class="timeline-task">
                                <div class="icon bg3">
                                    <i class="ti-signal"></i>
                                </div>
                                <div class="tm-title">
                                    <h4>Rashed sent you an email</h4>
                                    <span class="time"><i class="ti-time"></i>09:35</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse distinctio itaque at.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="settings" class="tab-pane fade">
                        <div class="offset-settings">
                            <h4>General Settings</h4>
                            <div class="settings-list">
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Notifications</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch1" />
                                            <label for="switch1">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Keep it 'On' When you want to get all the notification.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show recent activity</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch2" />
                                            <label for="switch2">Toggle</label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show your emails</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch3" />
                                            <label for="switch3">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Show email so that easily find you.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Show Task statistics</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch4" />
                                            <label for="switch4">Toggle</label>
                                        </div>
                                    </div>
                                    <p>The for attribute is necessary to bind our custom checkbox with the input.</p>
                                </div>
                                <div class="s-settings">
                                    <div class="s-sw-title">
                                        <h5>Notifications</h5>
                                        <div class="s-swtich">
                                            <input type="checkbox" id="switch5" />
                                            <label for="switch5">Toggle</label>
                                        </div>
                                    </div>
                                    <p>Use checkboxes when looking for yes or no answers.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- offset area end -->
            <!-- jquery latest version -->
            
            <!-- bootstrap 4 js -->
            <script src="assets/js/popper.min.js"></script>
            
            <script src="assets/js/owl.carousel.min.js"></script>
  
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
