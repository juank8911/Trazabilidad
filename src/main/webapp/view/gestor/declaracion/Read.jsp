<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<demo:header />

<body>
<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>
	<%@include file="../sidebarNavbar.jsp"%>
	<!-- main content area start -->
	<div class="main-content">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-6">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Listado Historico</h4>
						<ul class="breadcrumbs pull-left">
							<li><span>Registrados por tipo </span></li>
						</ul>
					</div>
				</div>
				<!-- FIN DE MENU  -->
			</div>

		</div>
		<div class="row">
			<kendo:grid name="historicoDecla" pageable="true" columnMenu="true" width="95%">
			        <kendo:grid-toolbar>
					<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
				</kendo:grid-toolbar>
				<kendo:grid-excel fileName="Reporte Mensual.xlsx" filterable="true"
					proxyURL="/trazabilidad/informesServlet?action=histLisGen" /> 
        			<kendo:grid-excel fileName="Historico declaraciones.xlsx" filterable="true" proxyURL="/trazabilidad/informesServlet?action=histLisGen" />
				<kendo:dataSource pageSize="10"  >
    			<kendo:dataSource-transport>
    			<kendo:dataSource-transport-read url="/trazabilidad/informesServlet?action=histLisGen"/>
    			</kendo:dataSource-transport>
    			</kendo:dataSource>
    			<kendo:grid-columns>
    				<kendo:grid-column title="Numero de Declaracion" field="dec_id"></kendo:grid-column>
    				<kendo:grid-column title="Fecha de Envio" field="dec_gen_fecha_trn" format="{0: yyyy-MM-dd}" template="#if(dec_gen_fecha_trn == 'null'){# N/A #}else{# #: dec_gen_fecha_trn #  #}#"></kendo:grid-column>
    				<kendo:grid-column title="Transporador" field="sedTrn.sed_nombre"></kendo:grid-column>
    				<kendo:grid-column title="Generador" field="sedGen.sed_nombre"></kendo:grid-column>
    				<kendo:grid-column title="Corriente Residuos" field="tRes"></kendo:grid-column>
    				<kendo:grid-column title="Cantidad Total (kg)" field="pesoGen"></kendo:grid-column>
    				<kendo:grid-column title="Estado" field="estado"></kendo:grid-column>
    				<kendo:grid-column title="Ver">
    				<kendo:grid-column-command>
            				<kendo:grid-column-commandItem name="view" />            					
            			</kendo:grid-column-command>
    				</kendo:grid-column>
    			</kendo:grid-columns>
			</kendo:grid>
		
		</div>
		<!-- page title area end -->
		<!--div class="main-content-inner"-->
		<!-- table success start -->

		<!--div class="card"-->

		<!--div class="card-body"-->

		<br /> <br />

		
		<!--/div-->
		<!--/div-->

		<!-- table success end -->
		<!--/div-->
		<!-- main content area end -->
		<!-- footer area start-->

		<footer>
			<div class="footer-area">
				<p>
					Copyright ® 2020 <a href="http://www.ideam.gov.co/">IDEAM.</a>Todos
					los derechos reservados.
				</p>
			</div>
		</footer>
		<!-- footer area end-->
	</div>
	<!-- page container area end -->
	</div>|
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

