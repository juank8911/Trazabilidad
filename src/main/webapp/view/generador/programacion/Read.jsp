<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Programacion </title>
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
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
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


                        <li class="dropdown">
                            <i class="ti-bell ">
                                <span>2</span>
                            </i>

                        </li>
                        <li class="dropdown">
                            <i class="ti-flag-alt"><span>3</span></i>

                        </li>
                        <li>
                            <div class="dropdown col-lg-6 col-md-4 col-sm-6">
                                <button class="btn btn-success dropdown-toggle " type="button" data-toggle="dropdown">
                                    Nombre usuario
                                </button>
                                <div class="dropdown-menu" style="background: transparent !important;">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" style="text-align: center !important">Nombre Usuario</h5>
                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Corporación para el Desarrollo Sostenible del Archipiélago de San Andrés, Providencia y Santa Catali</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-outline-success mb-3" data-dismiss="modal"> Perfil</button>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <button type="button" class="btn btn-outline-success mb-3">Cerrar Sesion</button>
                                        </div>
                                    </div>
                                </div>
                            </div></li>
                        <li class="dropdown">
                            <i class="ti-help" data-toggle="dropdown"></i>

                        </li>

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
                                <li><a href="controlGenerador?action=generador"><i class="ti-dashboard"></i> <span>Inicio</span></a></li>
                                <li class="active">
                                    <a aria-expanded="true"><i class="ti-angle-down"></i><span>Información</span></a>
                                    <ul class="collapse">
                                       <li><a method="post" href="controlGenerador?action=empresaGenera" aria-expanded="true"><i class="fa fa-university"></i><span>Empresa</span></a></li>
                                        <li><a href="controlGenerador?action=sedeGenera" aria-expanded="true"><i class="fa fa-building"></i><span>Establecimiento</span></a></li>
                                        <li><a href="controlGenerador?action=perfilLeeGenera" aria-expanded="true"><i class="fa fa-male"></i><span>Perfil</span></a></li>
                                         <li><a method="post" href="controlGenerador?action=passGenera" aria-expanded="true"><i class="ti-key"></i><span>Contraseña</span></a></li> 
                                         
                                    </ul>
                                </li>
                                <li class="active">
                                    <a aria-expanded="true"><i class="ti-angle-down"></i><span>Declaraciones</span></a>
                                    <ul class="collapse">
                                        <li><a href="controlGenerador?action=residuoLeeGenera" aria-expanded="true"><i class="fa fa-building"></i><span>Residuos</span></a></li>
                                        <li><a href="controlGenerador?action=programaListaGenera" aria-expanded="true"><i class="ti-user"></i><span>Programacion</span></a></li>
                                        <li><a method="post" href="controlGenerador?action=enviosGenera" aria-expanded="true"><i class="fa fa-university"></i><span>Declaracion & Envio</span></a></li>
                                        <li><a href="controlGenerador?action=reporteAGenera" aria-expanded="true"><i class="fa fa-building"></i><span>Reporte Anual</span></a></li>
                                        <li><a href="controlGenerador?action=reporteMGenera" aria-expanded="true"><i class="ti-user"></i><span>Generacion Mensual</span></a></li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a  aria-expanded="true"><i class="ti-angle-down"></i><span>Consultas</span></a>
                                    <ul class="collapse">
                                        <li><a href="controlGenerador?action=declaraListaGenera" aria-expanded="true"><i class="ti-files"></i><span>Historico</span></a></li>
                                        <li><a href="controlGenerador?action=indiListaGenera" aria-expanded="true"><i class="fa fa-pie-chart"></i><span>Indicadores</span></a></li>
                                        <li><a href="controlGenerador?action=indiCreaGenera" aria-expanded="true"><i class="ti-menu-alt"></i><span>Salidas</span></a></li>
                                    </ul>
                                </li>
                                <li><a href="controlGenerador?action=generador"><i class="ti-shift-right"></i> <span>Cerrar Sesion</span></a></li>
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
                                <h4 class="page-title pull-left">Listado de Programación</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>  en el sistema de información</span></li>
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
                                                <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="controlGenerador?action=programaCreaGenera" class="text-white"> Crear Programación</a></button>
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
