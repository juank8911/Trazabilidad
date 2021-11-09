<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<title>sdstrp - Crear Ruta </title>
    </head>

    <body>
       
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear de Ruta</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> asociada a la sede del transportador en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                
                <div class="form-control">
                    <form method="post" action="controlTrans?action=rutaAgregar" class="needs-validation " novalidate="">
                        <div class="form-row">

                            <div class="form-group col-md-2">
                                <label for="example-text-input" class="col-form-label">Nombre: * </label>

                            </div>
                            <div class="form-group col-md-10">
                                <input type="text" name="nombreRuta"class="form-control" id="validationCustom02" placeholder="" value="" required="">
                            </div>
                        </div>
                        <input type="hidden" value="${idSede}" name="idTransp">

                        <div class="form-group col-md-4">
                            <label for="example-text-input" class="col-form-label">Seleccione Establecimientos Generadores: *</label>

                        </div>
                        <div class="form-group col-md-10">
                            <select  class="form-control" name="sedeG" size="3" multiple="" required="">
                                <c:forEach var="dato" items="${listSedeTr}">
                                    <option value="${dato.get(0)}"> ${dato.get(1)}  ::  ${dato.get(2)}  ::  ${dato.get(3)}  ::  ${dato.get(4)}:: ${dato.get(5)}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <button class="btn btn-success mb-3" type="submit">Crear Ruta</button>
                        <button class="btn btn-success mb-3" type="submit"><a href="controlTrans?action=transp" class="text-white">Cancelar</a></button>
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
