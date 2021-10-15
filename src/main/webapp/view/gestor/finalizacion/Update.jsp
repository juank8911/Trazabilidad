<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Panel de Control</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/metisMenu.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.min.css">
        <link rel="stylesheet" href="assets/css/coloresInst.css">
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <link rel="stylesheet" href="assets/css/default-css.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <!-- modernizr css -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Finalizacion </h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Declaraciones</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
       

                    
                    <!-- page title area end -->
                    <div class="main-content-inner">
                        
                        <br>
                
                <c:forEach var="dato01" items="${listaDeclApGest}" >
                    <div class="container-fluid bg-success text-white">

                        <div class="form-group col-md-12">

                            <h6><small>Declaracion: </small> ${dato01.get(1)} </h6>
                            <h6><small>Generador: </small> ${dato01.get(4)} </h6>
                            <h6><small>Transportador: </small> ${dato01.get(5)} </h6>
                            <h6><small>Corriente de Residuo: </small> ${dato01.get(6)} </h6>
                            
                        </div>

                    </div>
                </c:forEach>

                <c:forEach var="dato0" items="${listaDeclApGest}">
                    
                    <form  method="post" action="ControlGestor?" class="needs-validation form-control" novalidate="">
                        <div class="form-group row">
                        
                            <label class="col-md-3 col-form-label"> Tipo de Embalaje:* </label>
                            <select  id="tipEmbalaje" name="tipEmbalaje"  class="form-control col-md-3" required="">

								<option value="${dato0.get(9)}">${dato0.get(10)}</option>
                                <c:forEach var="dato" items="${listaTipoEmbalaje}"> 
                                    <option value="${dato.tem_id}">${dato.tem_nombre}</option>
                                </c:forEach>
                            </select>
                        
                            <label class="col-md-3 col-form-label"># Embalajes:* </label>
                            <input type="number" name="txtCantEmb" id="txtCantEmb" class="form-control col-md-3" required="">
                        
                        
                            <label class="col-md-3 col-form-label">Tipo de Empaque: * </label>
                            <select  id="tipEmpaque" name="tipEmpaque" class="form-control col-md-3" required="">
                            <option value="${dato0.get(7)}">${dato0.get(8)}</option>
                                 <c:forEach var="dato1" items="${listaTipoEmpaque}"> 
                                    <option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
                                </c:forEach>

                            </select>
                        
                            <label class="col-md-3 col-form-label"># de Empaques: *</label>
                            <input type="number" name="CantEmpq" id="txtCantEmpq" class="form-control col-md-3" required="">

                            <label class="col-md-3 col-form-label">Peso* (Kg)</label>
                            <input type="number" name="txtCantPeso" id="txtCantPeso" class="form-control col-md-3" required="">

                            <label for="validationCustom01" class="col-3 col-form-label" >Recepcion Transportador:</label>
                            <input type="date" name="txtFRecibe" class="form-control col-3"  placeholder="" value="" required="">
                        </div>
                        
                            <input type="hidden" value="${dato0.get(1)}" name="idDecla">
                            <input type="hidden" value="${dato0.get(3)}" name="idDecRes">

                </c:forEach>

                        <div class="form-group col-md-2">
                            <button  type="submit" name="action"  value="finalizaAprobGestor" class="btn btn-success form-control"> Finalizar</button>
                        </div>
                            <div class="form-group col-md-2">
                            <button type="submit" name="action" value="finalizaRechazaGestor" class="btn btn-danger form-control"> Rechazar </button>
                        </div>
                    
                        
                    </form>

                    </div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    <footer>
                        <div class="footer-area">
                            <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                        </div>
                    </footer>
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
