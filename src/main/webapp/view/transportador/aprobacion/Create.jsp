<%-- 
    Document   : Create
    Created on : 21/01/2021, 01:04:51 PM
    Author     : Yorman B.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
		<demo:header />
        <title>sdstrp - Listado de Aprobados </title>
<!--         <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.common.min.css"> -->
<!--         <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.default.min.css"> -->
<!--         jquery latest version -->
<!--         <script src="assets/js/vendor/jquery-2.2.4.min.js"></script> -->
<!--         <script src="assets/js/kendoV2.all.min.js"></script> -->
    </head>

    <body>
        
        <%@include file ="../sidebarNavbar2.jsp" %>
           

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Aprobacion de declaraciones</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> de residuos</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->
                <br>
                
                <br>
                
                <c:forEach var="dato01" items="${listDeclaAprueba}" begin="0" end="0">
                
	
                	
                    <div class="container-fluid bg-success text-white">

                        <div class="form-group col-md-12">
                            <h6><small>Declaracion: </small> ${dato01.get(1)} </h6>
																
                            <h6><small>Generador: </small> ${dato01.get(4)} </h6>

                            <h6><small>Corriente de Residuo: </small> ${dato01.get(11)} </h6>

                            <h6><small>Enviada por Generador: </small> ${dato01.get(6)}</h6>
                        </div>

                    </div>

                </c:forEach>



		<form class="form-row" method="post" action="controlTrans?action=declaTRNAprobar">
                <c:forEach var="dato0" items="${listDeclaAprueba}">
                        <div class="form-group col-md-3"> 
                            <label> Tipo de Embalaje:* </label>
<%--                             <h4>${dato0.get(8)} :: ${dato0.get(9)}</h4> --%>
                            <select  id="tipEmbalaje" name="tipEmbalaje"  class="form-control" required="">
								 <option value="${dato0.get(9)}">${dato0.get(10)}</option>
                                <c:forEach var="dato" items="${listaTipoEmbalaje}"> 

                                    <option value="${dato.tem_id}">${dato.tem_nombre}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-2"> 
                            <label># Embalajes:* </label>
                            <input type="number" name="txtCantEmb" id="txtCantEmb" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-3"> 
                            <label>Tipo de Empaque: * </label>
<%--                             <h4>${dato0.get(6)} :: ${dato0.get(7)}</h4> --%>
                            <select  id="tipEmpaque" name="tipEmpaque" class="form-control" required="">
                            	<option value="${dato0.get(7)}">${dato0.get(8)}</option>
                                <c:forEach var="dato1" items="${listaTipoEmpaque}"> 
                                    <option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
                                </c:forEach>

                            </select>
                        </div>
                        <div class="form-group col-md-2"> 
                            <label># de Empaques: *</label>
                            <input type="number" name="CantEmpq" id="txtCantEmpq" class="form-control" required="">
                        </div>
                        <div class="form-group col-md-2"> 

                            <label>Peso (Kg)</label>
                            <input type="number" name="txtCantPeso" id="txtCantPeso" class="form-control" required="">
                        </div>
                        
                        <div class="form-group col-md-3">
                            <label for="validationCustom01" >Recibe Transportador:</label>
                            <input type="date" name="txtFRecibe" class="form-control"  placeholder="" value="" required="">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="validationCustom01"  >Entrega al Gestor:</label>
                            <input type="date" name="txtFEntrega" class="form-control"  placeholder="" value="" required="">
                        </div>
                        
                        <div class="form-group col-md-6"> 
                            <label>Tipo de Vehiculo * </label>
                            <select   name="idVeh" class="form-control" required="">
                                <c:forEach var="dato1" items="${listaVehiculoUsu}"> 

                                    <option value="${dato1.get(0)}"> ${dato1.get(4)} :: ${dato1.get(2)}</option>
                                </c:forEach>

                            </select>
                        </div>

                            <input type="hidden" value="${dato0.get(1)}" name="idDecla">
                            <input type="hidden" value="${dato0.get(3)}" name="idDeRes">
   						</c:forEach>
                   

           				<div class="btn-group btn-group-toggle">
                            <button  type="submit" name="action" class="btn btn-success mb-3 form-control" >Aprobar Declaracion</button>
                            <button type="submit" name="action" value="declaTRNRechazar" class="btn mb-3 btn-danger mb-3 ti-close">Rechazar Declaracion</button>
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
