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
        <!-- amchart css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- others css -->
        <link rel="stylesheet" href="assets/css/typography.css">
        <link rel="stylesheet" href="assets/css/default-css.css">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
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
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Actualiza Tipo de Residuo autorizado</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>a las sede del gestor en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="main-content-inner">
                    
                    
                    <form method="post" action="ControlGestor?action=servicioEnvActuaGestor"> 
                        <div class="form-group">
                    <label class="form-group col-md-2" for="corrienteResiduo">Corriente Residuo: </label>
                                        <select class="form-control" id ="tipResiduo" name="tipResiduo">

                                            <option value="${resiEditar.getId_tipoR()}"> ${resiEditar.getId_tipoR()}::${resiEditar.getNombreR()} </option>
                                            <c:forEach var="dato" items="${corriente_res}">

                                            <option value="${dato.getRes_id()}">${dato.getRes_id()}   ::   ${dato.getRes_nombre()}</option>
                                            
                                             </c:forEach>
                                        </select>
                                            </div>
                                            <div class="form-group">
                                            
                                            
                                          <label  class="form-group col-md-2"for="tipoGestion">Tipo Gestion: </label>
                                        <select class="form-control" id ="tipGestion" name="tipGestion">
                                            <option value="${resiEditar.getId_tipoG()}"> ${resiEditar.getNombreGes()} </option>
                                            <c:forEach var="dato" items="${tipo_gestion}">

                                            <option value="${dato.getRes_id_gestion()}">${dato.getRes_tipo_gestion()}</option>
                                            
                                             </c:forEach>
                                        </select>
                                        </select>
                                        </div>
                                        <div class="form-group">
                                        
                                        
                                        <label  class="form-group col-md-2"for="subTipGest">Sub tipo de Gestion: </label>
                                        <select class="form-control" id ="subTipGest" name="subTipGest">
                                            <option value="${resiEditar.getId_subgest()}"> ${resiEditar.getNombreSubgest()} </option>

                                        </select>
                                        </div>
                                            <input type="hidden" value="${resiEditar.getRes_id()}" name="txtId">
                                        
                                        <input class="btn btn-success mb-3" type="submit"  value="Actualizar Servicio Autorizado">
                    

                    </form>

                    <!-- page title area end -->
                    <div class="main-content-inner">

                    </div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    <footer>
                        <div class="footer-area">
                            <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
                        </div>
                    </footer>
                    <!-- footer area end-->
                </div>
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
