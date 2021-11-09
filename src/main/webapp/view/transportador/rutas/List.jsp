

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
	        <title>sdstrp - Ruta </title>
    </head>
    <body>

        <%@include file ="../sidebarNavbar.jsp" %>

        
            <div class="col-sm-7">
                <div class="breadcrumbs-area">
                    <h4 class="page-title pull-left">Listado de Rutas</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><span> inscritas en el sistema de información</span></li>
                    </ul>
                </div>
            </div>
            <!-- FIN DE MENU  -->
        

        <div class="card-body">

            <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="controlTrans?action=rutaCreaTransp" class="text-white">Crear Ruta </a> 
                <br>

        </div>
        
         
        <div class="card-body">
        <table id="grid">
            <thead>

                <tr>
                    <th scope="col">Nombre<br/>

                    </th>
                    <th scope="col">Sedes Generadoras</th>
                    

                    <th scope="col">Opciones</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${listRutas}">
                    <tr>
                        <td scope="row">${dato.get(1)}</td>
                        <td scope="row">${dato.get(0)}</td>

                        <td>
                            <form action="controlTrans" method="post">
                                <input type="hidden" name="txtId" value="${dato.get(0)}">
                                <button type="submit" name="action" value="rutaActuaTransp" class="btn btn-success ti-search"> </button>
                                <button type="submit" name="action" value="rutaDeleTransp" class="btn btn-danger ti-trash"> </button>
                            
                            </form>
  
                            
                        </td>
                    </tr>

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

</div>
        <footer>
            <div class="footer-area">
                <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p>
            </div>
        </footer>

        <!-- jquery latest version -->

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
