<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>sdstrp - Empresa</title>
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
        
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Empresas</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Registrados en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                    
                </div>
                <!-- page title area end -->
                            <br />
                            
                            <div class="text-uppercase bg-success mb-3">
                           <button type="button" class="fa fa-newspaper-o btn btn-success"> Columnas</button>
                           <button type="button" class="fa fa-floppy-o btn btn-success"> Exportar</button>
                          
                           <div class="pull-right">
                                <form action="#">
                                <input type="text" name="search" placeholder="Buscar..." required="">
                                <i class="ti-search col-md-1"></i>
                            </form>
                           </div>
                           </div>
                            
                                    <table id="grid">
                                        
                                    <colgroup>
                                        <col style="width:110px" />
                                        <col style="width:120px" />
                                        <col style="width:130px" />
                                    </colgroup>
                                    <thead>
                                    
                                    <tr>
                                    <th>Razon Social <br/>
                                                 </th>
                                    <th>Nit <br />
                                                </th>
                                    <th>Departamento<br />
                                                 </th>
                                    <th>Municipio<br />
                                                 </th>
                                    <th>Generadores<br />
                                                </th>
                                    <th>Transportadores<br />
                                               </th>
                                    <th>Gestores<br />
                                                 </th>
                                    <th>Establecimiento<br />
                                                </th>

                            </thead>
                            <tbody>
                                
                                <tr>
                                                <td>Empresa 1</td>
                                                <td>Mark</td>
                                                <td>Transportador</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                               
                                                <td>
                                                    <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td>Empresa 2</td>
                                                <td>Activo</td>
                                                <td>Administrador</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                
                                                <td>
                                                    <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td>Empresa 3</td>
                                                <td>Activo</td>
                                                <td>Generador</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                
                                                 <td>
                                                     <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td>
                                                
                                                
                                            </tr>
                                            <tr>
                                                <td>Empresa 5</td>
                                                <td>Desactivado</td>
                                                <td>Gestor</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                
                                                 <td>
                                                     <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td> 
                                            </tr>
                                            <tr>
                                                <td>Empresa 6</td>
                                                <td>Desactivado</td>
                                                <td>Gestor</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                
                                                 <td>
                                                     <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td> 
                                            </tr>
                                            <tr>
                                                <td>Empresa 7</td>
                                                <td>Desactivado</td>
                                                <td>Gestor</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                
                                                 <td>
                                                     <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td> 
                                            </tr>
                                            <tr>
                                                <td>Empresa 8</td>
                                                <td>Desactivado</td>
                                                <td>Gestor</td>
                                                <td>ejemplo 1</td>
                                                <td>ejemplo 2</td>
                                                <td>ejemplo 3</td>
                                                <td>ejemplo 4</td>
                                                
                                                 <td>
                                                     <button type="button" class="btn btn-success mb-3 ti-search"></button>                                                  
                                                    <button type="button" class="btn btn-success mb-3 ti-pencil"></button>
                                                </td> 
                                            </tr>
                               
                                
                                
                            </tbody>
                                    </table>
                            
                            <script>
                                $(document).ready(function() {
                                    
                                    $("#grid").kendoGrid({
                                        toolbar: ["excel"],
                                        
                                        excel: {
                                            allPages: true
                                        },
                                        height: 350,
                                        
                                        columnMenu: true,
                                        pageable: {
                                            pageSize: 4
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
            
            <!-- others plugins -->
            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/scripts.js"></script>

    </body>

</html>
