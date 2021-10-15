<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   
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
        
        <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.common.min.css">
        <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.default.min.css">
        
        <!-- jquery latest version -->
        <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
        <!-- modernizr css -->
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="assets/js/kendoV2.all.min.js"></script>
        <script src="assets/js/kendo.es-ES.js"></script>
    </head>

    <body>
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
           

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-8">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Servicios y Residuos Autorizados
                                </h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>a la sede del gestor en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="main-content-inner">
                    <div class="card-body">

            <a type="button" class="btn btn-success mb-3 ti-plus pull-right text-white" href="ControlGestor?action=servicioCreaGestor" >Crear Tipo de Residuo Autorizado </a> 

        </div>
  <br>

                 <p>
            <label style="color: green;width: 100%;text-align: left;">${infoMessage}</label> 
        </p>
        <p>
             <label style="color: red; width: 100%;text-align: left;">${errorMessage}</label>
        </p>
        
                        
        <table id="grid">
            <thead>

                <tr>
                    <th scope="col">Corriente de Residuo<br/>

                    </th>
                    <th scope="col">Tipo Gestion</th>
                    <th scope="col">Sub-tipo Gestion</th>
                    

                    <th scope="col">Opciones</th>

                </tr>
            </thead>
            <tbody>
            <tr>
            </tr>
                <c:forEach var="dato" items="${listResiGestorId}">
                
<%--                 <c:forEach items="dato" var="list" > --%>
                
                    <tr>
                        <td scope="row">${dato.get(1)} :: ${dato.get(2)}</td>
                        <td scope="row">${dato.get(4)}</td>
                  	 	<td scope="row">${dato.get(6)}</td>
                  	 						    <td>
                             <form action="ControlGestor" method="post">
                                <input type="hidden" name="txtId" value="${dato.get(0)}">
                                <button type="submit" name="action" value="servicioActuaGestor" class="btn btn-success ti-pencil"> </button>
                                <button type="submit" name="action" value="eliminaServicioGestor" class="btn btn-danger ti-trash"> </button>
                             </form>
                        </td>
<%--                 </c:forEach> --%>
                </c:forEach>
            </tbody>

        </table>            
             <script>
                                $(document).ready(function() {
                                    
                                    $("#grid").kendoGrid({

                                        height: 450,
                                        
                                        columnMenu: true,
                                        pageable: {
                                            pageSize: 10
                                        },
                                        sortable: true
   
                                    });
                                });
                            </script>


                    <!-- main content area end -->
                    <!-- footer area start-->
                    <footer>
                        <div class="footer-area">
                            <p>Copyright � 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
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
