<%-- 
    Document   : View
    Created on : 31/01/2021, 11:07:59 PM
    Author     : Yorman B.
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Ver Autorizacion</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>ambiental asociada a la sede del gestor en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                
                    <br>
                    <div class="container form-control"> 
                        
                        <div class="form-row">
                            <h6><small class="col-md-7">Resolucion de Licencia o plan de manejo ambiental: </small> ${autVer.getLicencia_plan()} </h6>
                    <h6><small class="col-md-5">Fecha Resolucion: </small> ${autVer.getFecha_resolF()} </h6>
                    </div>
                    <br>
                    <div class="form-row">
                        <h6><small class="col-md-12">Autoridad Ambiental: </small> ${autVer.getAuto_ambiental()} </h6>
                            
                        </div>
                        <br>
                    <div class="form-row">
                        <h6><small class="col-md-4">¿Tiene Permisos de emisiones?: </small> ${autVer.getPermiso_emisiones()} </h6>
                        <h6><small class="col-md-4">Resolucion Permiso de Emisiones: </small> ${autVer.getEmisiones_resol()} </h6>
                            
                        </div>
                        <br>
                    <div class="form-row">
                        <h6><small class="col-md-4">Fecha de otorgamiento: </small> ${autVer.getFecha_ini_emisF()} </h6>
                        <h6><small class="col-md-4">Fecha de Vencimiento </small> ${autVer.getFecha_fin_emisF()}  </h6>
                            
                        </div>
                        <br>
                    <div class="form-row">
                        <h6><small class="col-md-4">¿Tiene Permisos de Vertimientos?: </small> ${autVer.getPermiso_vertimi()} </h6>
                        <h6><small class="col-md-4">Resolucion Permiso de Vertimientos: </small> ${autVer.getVertimi_resol()} </h6>
                            
                        </div>
                        <br>
                    <div class="form-row">
                        <h6><small class="col-md-4">Fecha de otorgamiento: </small> ${autVer.getFecha_ini_vertiF()} </h6>
                        <h6><small class="col-md-4">Fecha de Vencimiento </small> ${autVer.getFecha_fin_vertiF()}  </h6>
                            
                        </div>
                        <br>
                    <div class="form-row">
                        <h6><small class="col-md-4">Licencia </small> ----------------------- </h6>
                      
                            
                        </div>
                        <br>
                        <button class="btn btn-success mb-3" type="submit"><a href="ControlGestor?action=autorizaListaGestor" class="text-white">Regresar</a></button>
                        <br>
                    
      
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