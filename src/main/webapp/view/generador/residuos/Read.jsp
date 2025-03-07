<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Residuo </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/kendo.default-v2.min.css">
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
        <link rel="stylesheet" href="assets/css/coloresInst.css">
        <!-- modernizr css -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
        
        <!-- Kendo -->
        <link rel="stylesheet" href="assets/css/kendo.default-V2.min.css">
        <!-- jquery latest version -->
        <script src="assets/js/jquery-1.12.3.min.js"></script>
        <script src="assets/js/kendoV2.all.min.js"></script>
        <link rel="stylesheet" href="assets/css/kendoV2.common.min.css">
        <link rel="stylesheet" href="assets/css/kendo.default.min.css">
        
    </head>

    <body>
        
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Residuo</h4>
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
                
                    <div class="row">
                        <div class="col-lg-6 col-ml-12">
                                <!-- Server side start -->
                                
                                    
                                        <div class="card-body">
                                                <a type="button" class="btn btn-success mb-3 ti-plus pull-right" href="controlGenerador?action=residuoCreaGenera" class="text-white"> Crear Residuo</a>
                                        </div>

                        </div>
                    </div>
                    
                    <p>
            			<label style="color: green;width: 100%;text-align: left;">${infoMessage}</label> 
        			</p>
        			<p>
             			<label style="color: red; width: 100%;text-align: left;">${errorMessage}</label>
        			</p>

                    <table id="grid">
                        <thead>

                        <tr>
                            <th scope="col">Descripcion <br/>
                                 
                            </th>
                            <th scope="col">Corriente de Residuo <br />
                                 </th>
                            <th scope="col">Ubicacion Gestion<br />
                                 </th>
                             <th scope="col">Transportador</th>
                             <th scope="col">Gestor</th>
                            <th scope="col">Tipo Gestion<br />
                                 </th>
                            <th scope="col">Subtipo de Gestion<br />
                                 </th>
                           
                            <th scope="col">Opciones</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${listaResiduosGenId}">
                        <tr>
                            <td scope="row">${dato.get(1)}</td>
                            <td scope="row">${dato.get(2)}::${dato.get(3)}</td>
                            <td scope="row">${dato.get(4)}</td>
                            <td scope="row">${dato.get(7)}</td>
                            <td scope="row">${dato.get(8)}</td>
                            <td scope="row">${dato.get(5)}</td>
                            <td scope="row">${dato.get(6)}</td>
                            <td scope="row">
                                <form action="controlGenerador" method="post">
                                      <input type="hidden" name="id" value="${dato.get(0)}">                                         
                                    <button type="submit" name="action" value="residuoActuaGenera"class="btn btn-success ti-pencil-alt"> </button>
<!--                                     <button type="submit" name="action" value="eliminarResiGenerador" class="btn btn-danger ti-trash"> </button> -->
                                </form>
                            </td>
                        </tr>
                        
                        </c:forEach>
                        </tbody>
                        
                    </table>
                
                <script>
                                $(document).ready(function() {
                                    
                                    $("#grid").kendoGrid({
                                        toolbar: ["excel"],
                                        
                                        excel: {
                                            allPages: true
                                        },
                                        height: 450,
                                        
                                        columnMenu: true,
                                        pageable: {
                                            pageSize: 5
                                        },
                                        sortable: true
   
                                    });
                                });
                            </script>

                    <!-- main content area end -->
                
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

