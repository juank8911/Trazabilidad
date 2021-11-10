
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
		<demo:header />
        <title>sdstrp - Panel de Control</title>
        
    </head>

    <body>
       <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
        
            <!-- main content area start -->
            
				<div class="col">
                <!-- page title area start -->
                 <div class="row">
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear Autorizacion</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>ambiental asociada a la sede del gestor en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                </div>
                <!-- page title area end -->
                
                    <br>
                    <div class="row">
                    <form method="post" action="ControlGestor?action=guardaAutorizaGestor" >

                        <div class="form-row">
                            <label class="form-group col-md-4">Resolucion de Licencia o plan de manejo ambiental:*</label>
                            <input type="text" class="form-control col-md-5"  placeholder="Licencia o plan de manejo ambiental" name="txtResol">
                            <label class="form-group col-md-1">Fecha:*</label>
                            <input type="date" class="form-control col-md-2 "  name="txtFresol">
                        </div>
                        <br>
                        <div class="form-row">
                            <label class="form-group col-md-2">Autoridad Ambiental:*</label>
                            <select class="form-control col-md-10" name="txtAutoridad">
                                <option value=""> Seleccione Autoridad Ambiental</option>
                                <c:forEach var="dato" items="${autoridad}">
                                <option value="${dato.getId_auto_ambiental()}">${dato.getAuto_ambiental()} </option>
                                </c:forEach>
                            </select>
                            
                        </div>
                        <br>
                        <div class="form-row">
                            <label class="form-group col-md-4">¿Requiere Permisos de emisiones?</label>
                            <input type="checkbox" class="form-control col-md-1"  value="SI" name="txtEmis">
                            <label class="form-group col-md-4">Resolucion Permiso de Emisiones *</label>
                            <input type="text" class="form-control col-md-3" name="txtResolEmis">
                        </div>
                        <br>
                        <div class="form-row">
                            <label class="form-group col-md-3">Fecha de otorgamiento:</label>
                            <input type="date" class="form-control col-md-3"  name="txtFiniEmis">
                        
                            <label class="form-group col-md-3">Fecha de Vencimiento:</label>
                            <input type="date" class="form-control col-md-3"  name="txtFfinEmis">
                        </div>
                        <br>
                        <div class="form-row">
                            <label class="form-group col-md-4">¿Requiere Permisos de Vertimientos?</label>
                            <input type="checkbox" class="form-control col-md-1" value="SI" name="txtVert">
                            <label class="form-group col-md-4">Resolucion Permiso de Vertimientos *</label>
                            <input type="text" class="form-control col-md-3" name="txtResolVert">
                        </div>
                        <br>
                        <div class="form-row">
                            <label class="form-group col-md-3">Fecha de Otorgamiento:</label>
                            <input type="date" class="form-control col-md-3"  name="txtFiniVert">
                        
                            <label class="form-group col-md-3">Fecha de Vencimiento:</label>
                            <input type="date" class="form-control col-md-3" name="txtFfinVert">
                        </div>
                        <br>
                        <div class="form-row">
                            <label class="form-group col-md-3">Licencia PDF:</label>
                            <input type="file" class="form-control col-md-9"  name="txtPdf">
                        </div>
                        <br>
                        <div class="form-row">
                            
                            <input class="btn btn-success mb-3" type="submit" type="submit" name="action" value="Crear Autorizacion">
                            <button class="btn btn-success mb-3" type="submit"><a href="ControlGestor?action=autorizaListaGestor" class="text-white">Cancelar</a></button></td>
                        </div>


                    </form>
                    </div>
                 <!-- main content area end -->
                    <!-- footer area start-->
                     <div class="row">
                    <footer>
                        <div class="footer-area">
                            <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                        </div>
                    </footer>
                    </div>
                    </div>
                    <!-- footer area end-->
                
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
