<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Asociar Datos </title>
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
    </head>

    <body>
        <!-- preloader area start -->
        <div id="preloader">
            <div class="loader"></div>
        </div>
        <!-- preloader area end -->
        <div class="logo">
            <img src="assets/images/logo_sdstrp.png" alt="logo"></a>
            <img src="assets/images/logo_siac.jpg" alt="logo" ></a>
            <img src="assets/images/logo_mads.png" alt="logo"></a> 
            <img src="assets/images/logo_ideam.png" alt="logo"></a> 

        </div>
        <!-- header area start -->
        <div class="header-area">
            <div class="row align-items-center">
                <!-- nav and search button -->
                <div class="col-md-6 col-sm-8 clearfix">
                    <div class="nav-btn pull-left">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>

                </div>
                <!-- profile info & task notification -->
                <div class="col-md-6 col-sm-4 clearfix">
                    <ul class="notification-area pull-right">

                    </ul>
                </div>
            </div>
        </div>
        <!-- header area end -->
        <!-- page container area start -->
        <div class="page-container">
            <!-- sidebar menu area start -->
            <div class="sidebar-menu">

                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu" >
                                <li><a href="control?action=mesDatos"><i class="ti-dashboard"></i> <span>Inicio</span></a></li>
                                <li><a href="invoice.html"><i class="ti-shift-right"></i> <span>Cerrar Sesion</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Asociar Datos</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> al sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <!-- main content area inicio -->
                <div class="main-content-inner">
                    <div class="row">
                        <div class="col-lg-6 col-ml-12">
                            <div class="row">


                                <!-- Server side start -->
                                <div class="col-12">
                                    <div class="card mt-4">
                                        <div class="card-body">

                                            <form method="post" action="control?action=mesClave" class="needs-validation" novalidate="">
                                                <table class="table text-left">
                                                    <tr>
                                                        <td> <label for="validationCustom01">Nombre </label></td>
                                                        <td> <input type="text" name="nomUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                        <td> <label for="example-text-input" class="col-form-label">Apellido </label></td>
                                                        <td> <input type="text" name="apeUsu" class="form-control" id="validationCustom02"  value="" required=""></td>

                                                    </tr>

                                                    <tr>
                                                        <td> <label for="example-text-input" class="col-form-label">Tipo de Documento</label></td>
                                                        <td> <select class="form-control" name="tipDocu">
                                                                <option>Select</option>
                                                                <option>Large select</option>
                                                                <option>Small select</option>
                                                            </select></td>
                                                        <td> <label for="example-text-input" class="col-form-label">Nro de Documento</label></td>
                                                        <td> <input type="text" name="nroDocu" class="form-control" id="validationCustom02"  value="" required=""></td>

                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">Cargo </label></td>
                                                        <td> <input type="text" name="cargoUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                        <td> <label for="example-text-input" class="col-form-label">Telefono </label></td>
                                                        <td> <input type="text" name="telUsu" class="form-control" id="validationCustom02"  value="" required=""></td>

                                                    </tr>
                                                    <tr>
                                                        <td> <label for="validationCustom01">Correo Electronico</label></td>
                                                        <td> <input type="text" name="emailUsu" class="form-control" id="validationCustom02"  value="" required=""></td>
                                                        <td> &nbsp; </td>
                                                        <td> &nbsp; </td>

                                                    </tr>
                                                    <tr>
                                                        <td><button class="btn btn-success mb-3" type="submit">Asociar Datos</button> </td>
                                                        <td> &nbsp; </td>
                                                        <td> &nbsp; </td>
                                                        <td> &nbsp; </td>

                                                    </tr>


                                                </table>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Server side end -->

                            </div>
                        </div>
                    </div>
                    <!-- main content area end -->
                </div>
                <!-- footer area start-->
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
