<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
        <title>sdstrp - Residuo </title>
    </head>

    <body>
        
        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Salidas</h4>
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

					
                    <table id="grid">
                        <thead id="verde">

                        <tr>
                            <th scope="col">Numero de Declaracion <br/>
                                 
                            </th>
                            <th scope="col">Fecha de Envio<br />
                                 </th>
                            <th scope="col">Corriente Reciduo<br />
                                 </th>
                            <th scope="col">Peso Decalarado <br />por el Generdaor</th>
                            <th scope="col">Transportador<br /></th>
                            <th scope="col">Fecha de<br /> recoleccion</th>
                            <th scope="col">peso declarado<br /></th>
                            <th scope="col">Gestor<br /></th>
                            <th scope="col">Fecha de Recepcion<br /> por el Generador </th>
                            <th scope="col">Peso recibido por<br /> el Gestor</th>
                            
                            <th scope="col">Estado</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${listDeclaSal}">
                        <tr>
                        	
                            <td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.dec_id}</td>
                            <td scope="row" rowspan="${dato.declaracion_res.size()}" ><fmt:formatDate value="${dato.dec_gen_fecha_gen}" timeStyle="none" dateStyle="long" /></td>
                           
                            
                                                 
                            <c:forEach items="${dato.declaracion_res}" var="dere" varStatus="loop">
                            <c:if test="${loop.index == 0}">
                            		<td> ${dere.der_gen_tipo_residuo} -- </td>
                            		<td>${dere.der_gen_peso_residuo}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.decSedTran.sed_nombre}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}"><fmt:formatDate value="${dato.dec_trn_fecha_trn}" 	timeStyle="none" dateStyle="long" /></td>
                            		<td scope="row" >${dere.der_trn_peso_residuo2}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.decSedGes.sed_nombre}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}"><fmt:formatDate value="${dato.dec_ges_fecha_ent}" 	timeStyle="none" dateStyle="long" /></td>
                            		<td scope="row" >${dere.der_ges_peso_residuo2}</td>
                            		<c:choose>
                            		<c:when test="${dato.dec_gen_aprobada == 'N'}">
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">No Enviada</td>
                            		</c:when>
                            		<c:when test="${dato.dec_gen_aprobada == 'A' && dato.dec_trn_aprobada == 'N'}">
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">Enviada</td>
                            		</c:when>
                            		</c:choose>
                            		</td>
                          </tr>		
                            </c:if>
                            <c:if test="${loop.index != 0}">
                            <tr>
                            		<td> ${dere.der_gen_tipo_residuo}</td>
                            		<td>${dere.der_gen_peso_residuo}</td>
                            		<td scope="row" >${dere.der_trn_peso_residuo2}</td>
                            		<td scope="row" >${dere.der_ges_peso_residuo2}</td>
                            </tr>		
                            </c:if>
                            </c:forEach>

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
					         </div>
                    <!-- main content area end -->
                         </div>
                <!-- footer area start-->
                <footer>
                <br/>
                
               <br/>
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


