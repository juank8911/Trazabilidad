<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html> -->
<!-- <html class="no-js" lang="en"> -->

<!--     <head> -->
<!--         <meta charset="utf-8"> -->
<!--         <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
<!--         <title>sdstrp - Residuo </title> -->
<!--         <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!--         <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico"> -->
<!--         <link rel="stylesheet" href="assets/css/bootstrap.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/kendo.default-v2.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/font-awesome.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/themify-icons.css"> -->
<!--         <link rel="stylesheet" href="assets/css/metisMenu.css"> -->
<!--         <link rel="stylesheet" href="assets/css/owl.carousel.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/slicknav.min.css"> -->
<!--         amchart css -->
<!--         <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" /> -->
<!--         others css -->
<!--         <link rel="stylesheet" href="assets/css/typography.css"> -->
<!--         <link rel="stylesheet" href="assets/css/default-css.css"> -->
<!--         <link rel="stylesheet" href="assets/css/styles.css"> -->
<!--         <link rel="stylesheet" href="assets/css/responsive.css"> -->
<!--         <link rel="stylesheet" href="assets/css/coloresInst.css"> -->
<!--         modernizr css -->
<!--         <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script> -->
        
<!--         Kendo -->
<!--         <link rel="stylesheet" href="assets/css/kendo.default-V2.min.css"> -->
<!--         jquery latest version -->
<!--         <script src="assets/js/jquery-1.12.3.min.js"></script> -->
<!--         <script src="assets/js/kendoV2.all.min.js"></script> -->
<!--         <link rel="stylesheet" href="assets/css/kendoV2.common.min.css"> -->
<!--         <link rel="stylesheet" href="assets/css/kendo.default.min.css"> -->
        
<!--     </head> -->
<demo:header/>
    <body>
        


        <%@include file ="../sidebarNavbar.jsp" %>
            <!-- main content area start -->
            <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>
					


					</br>
					</br>
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
        			
        			
        								<div class="container">
					
							<kendo:grid name="Residuos" pageable="true">
									<kendo:dataSource pageSize="4">
											<kendo:dataSource-transport>
													<kendo:dataSource-transport-read url="/trazabilidad/residuosServlet?action=residuosAll">
													</kendo:dataSource-transport-read>
											</kendo:dataSource-transport>
											<kendo:dataSource-schema >
											</kendo:dataSource-schema>
									</kendo:dataSource>
    		<kendo:grid-columns>
    				<kendo:grid-column title="Descripcion" field="res_nombre" />
    				<kendo:grid-column title="Corriente Residuo" field="tre_nombre" />
					<kendo:grid-column title="Ubicacion Gestion" field="nombre_gestion_ubi" />
					<kendo:grid-column title="Tipo Gestion" field="nombre_gestion" />
					<kendo:grid-column title="Sub tipo Gestion" field="nombre_gestion" />
					<kendo:grid-column title="Opciones">
					<kendo:grid-column-command>
            				<kendo:grid-column-commandItem name="editar" text="editar" >
            							<kendo:grid-column-commandItem-click>
            									<script type="text/javascript">
            											function editar(e)
            											{
            												e.preventDefault();
            												var dataItem = this.dataItem($(e.currentTarget).closest("tr"));
            												$.ajax({
															        url: "/trazabilidad/controlGenerador?action=residuoActuaGeneraCarg",
															        //send current record ID to the server
															        data: { id: dataItem.res_id },
															        success: function (data) {
															            //update the current dataItem with the received data from the server
															            //example data: {"OrderID":4,"OrderDate":"\/Date(1343941200000)\/","OrderDescription":"NewDescription","EmployeeId":4}
															            window.alert("Carga de ruta y envio");
															        	window.location.href = "/trazabilidad/controlGenerador?action=residuoActuaGenera";
															        }
															    })
                										}
            									</script>
            							</kendo:grid-column-commandItem-click>
            				</kendo:grid-column-commandItem>            					
            		</kendo:grid-column-command>
            		</kendo:grid-column>
    	</kendo:grid-columns>
							</kendo:grid>
					</div>
					
					<br/>
					<br/>

                
<!--                 <script> -->
<!--                                 $(document).ready(function() { -->
                                    
<!--                                     $("#grid").kendoGrid({ -->
<!--                                         toolbar: ["excel"], -->
<!--                                         excel: { -->
<!--                                             fileName: "Salidas.xlsx", -->
<!--                                             proxyURL: "https://demos.telerik.com/kendo-ui/service/export", -->
<!--                                             filterable: true -->
<!--                                         }, -->
<!--                                         height: 450,     -->
<!--                                         columnMenu: true, -->
<!--                                         pageable: { -->
<!--                                             pageSize: 5 -->
<!--                                         }, -->
<!--                                         sortable: true -->
   
<!--                                     }); -->
<!--                                 }); -->
<!--                             </script> -->

                    <!-- main content area end -->
                
                <!-- footer area start-->
     <demo:footer/>
<!--                 <footer> -->
<!--                     <div class="footer-area"> -->
<!--                         <p>Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos los derechos reservados.</p> -->
<!--                     </div> -->
<!--                 </footer> -->
<!--                 footer area end -->
            
<!--             page container area end -->

          
<!--             bootstrap 4 js -->
<!--             <script src="assets/js/popper.min.js"></script> -->
<!--             <script src="assets/js/bootstrap.min.js"></script> -->
<!--             <script src="assets/js/owl.carousel.min.js"></script> -->
<!--             <script src="assets/js/metisMenu.min.js"></script> -->
<!--             <script src="assets/js/jquery.slimscroll.min.js"></script> -->
<!--             <script src="assets/js/jquery.slicknav.min.js"></script> -->

<!--             start chart js -->
<!--             <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script> -->
<!--             start highcharts js -->
<!--             <script src="https://code.highcharts.com/highcharts.js"></script> -->
<!--             start zingchart js -->
<!--             <script src="https://cdn.zingchart.com/zingchart.min.js"></script> -->
<!--             <script> -->
<!-- //                 zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/"; -->
<!-- //                 ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"]; -->
<!--             </script> -->
<!--             all line chart activation -->
<!--             <script src="assets/js/line-chart.js"></script> -->
<!--             all pie chart -->
<!--             <script src="assets/js/pie-chart.js"></script> -->
<!--             others plugins -->
<!--             <script src="assets/js/plugins.js"></script> -->
<!--             <script src="assets/js/scripts.js"></script> -->
    </body>

</html>