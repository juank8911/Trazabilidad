<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Actualiza Ruta </title>
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
        <!-- jquery latest version -->
        <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
        <script type="text/javascript" src="assets/js/validar_ajax.js"></script>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- preloader area start -->
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Caracteristicas de Ruta</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> asociada a la sede del transportador en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                
                <div class="form-control">
                    <form method="post" action="controlTrans?action=" class="needs-validation " novalidate="">
                        <div class="form-row">

                            <div class="form-group col-md-4">
                                <label for="example-text-input" class="col-form-label">Nombre de Ruta: <c:forEach var="dato" items="${rutaG}" begin="0" end="0"> ${dato.getNombre_ruta()}</c:forEach></label>

                            </div>
                            
                                <input type="hidden" name="txtidRuta" value="<c:forEach var="dato" items="${rutaG}" begin="0" end="0"> ${dato.getId_rutas()}</c:forEach>">
                        </div>

                    <table id="dTabla">
                                        <thead>

                                            <tr>
                                                <th scope="col">Empresa<br/>

                                                </th>
                                                <th scope="col">Establecimiento
                                                </th>
                                                <th scope="col">Departamento<br />
                                                </th>
                                                <th scope="col">Municipio<br />
                                                </th>
                                                <th scope="col">Direccion<br />
                                                </th>
                                                

                                            </tr>
                                        </thead>
                                        <tbody id="sedeRuta">
                                            <c:forEach var="dato" items="${rutaG}">
                                            <tr>
                                                
                                                <td>${dato.getRazonSocial()}</td>
                                                <td>${dato.getNombre_sede()}</td>
                                                <td>${dato.getDepartamento()}</td>
                                                <td>${dato.getMunicipio()}</td>
                                                <td>${dato.getDireccion()}</td>
                                                
                                            </tr>
                                            </c:forEach>

                    </tbody>

                                    </table>
                        <br>
                        
                        <button class="btn btn-success mb-3" type="submit"><a href="controlTrans?action=rutaListaTransp" class="text-white">Regresar</a></button>
                    </form>
                 
                </div>
                <br/>
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
