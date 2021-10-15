<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Ver Perfil</title>
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
            <!-- page title area start -->
            <div>
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area">
                            <h4 class="page-title pull-left">Ver</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span>Perfil</span></li>
                            </ul>
                        </div>
                    </div>
                    <!-- FIN DE MENU  -->
                </div>
            </div>
            <!-- page title area end -->
            <!-- main content area inicio -->
            <div class="main-content-inner">
                <br>
<div class="row form-control">
                		
                    <div class="form-group row">
                    <div class="col-md-8">
                        <label for="rzon" id="perfil"><strong>Razon Social:</strong></label>
                         <label id="rzon" name="rzon"> ${idSede.empresaSed.emp_razon_social}</label>
                    </div>

                    </div>
                    <div class="form-group row"> 

                        <div class="col-md-10">
                            <label for="validationCustom01" id="perfil" ><strong>Nombre Comercial:</strong></label>
                            <label for="validationCustom01">${idSede.empresaSed.emp_nombre_comercial}</label>
                        </div>

                    </div>
                    <div class="form-group row">
                    <div class="col-md-2">
                     <label for="validationCustom01" id="perfil"><strong>Nit</strong></label>
                     <label for="validationCustom01">${idSede.empresaSed.emp_numero_documento}</label>
                    </div>  
                                                  
                    <div class="col-md-5">
                     <label for="validationCustom01" id="perfil" ><strong>CIUU</strong></label>
                     <label for="validationCustom01">${idSede.empresaSed.empCii.cii_nombre}</label>
                    </div>

                    </div>
                    
                    <div class="form-group row">
                    <div class="col-md-2">
                     <label for="direc" id="perfil"><strong>Direccion:</strong></label>
                     <label id="direc">${idSede.sed_direccion} , ${departamento} </label>
                    </div>

                     <div class="col-md-2">
                     <label for="telef" id="perfil"><strong>Telefono:</strong></label>
                     <label id="telef">${idSede.sed_telefono_nro}</label>
                    </div>

                        <div class="col-md-2">
                     <label for="extn" id="perfil"><strong>Ext:</strong></label>
                     <label id="extn">${idSede.sed_telefono_ext}</label>
						</div>
                        
                    </div>
                    
                    <div class="form-group row">
                        <div class="col-md-5">
                            <label for="ccRep" id="perfil"><strong>CC Representante: </strong></label>
                            <label  id="ccRep">${idSede.empresaSed.emp_rep_nombre}</label>
                        </div>

                        <div class="col-md-5">
                            <label for="mail" id="perfil"><strong>E-Mail Representante</strong></label>
                            <label id="mail">${idSede.empresaSed.emp_rep_email}</label>
                        </div>

                    </div>
                    </div>
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
