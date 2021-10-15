 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- <head> -->
<!-- <meta charset="utf-8"> -->
<!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
<!-- <title>sdstrp - Panel de Control</title> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="shortcut icon" type="image/png" -->
<!-- 	href="assets/images/icon/favicon.ico"> -->
<!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/font-awesome.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/themify-icons.css"> -->
<!-- <link rel="stylesheet" href="assets/css/metisMenu.css"> -->
<!-- <link rel="stylesheet" href="assets/css/owl.carousel.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/slicknav.min.css"> -->
<!-- <link rel="stylesheet" href="assets/css/coloresInst.css"> -->
<!-- <!-- amchart css --> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://www.amcharts.com/lib/3/plugins/export/export.css" -->
<!-- 	type="text/css" media="all" /> -->
<!-- <!-- others css --> -->
<!-- <link rel="stylesheet" href="assets/css/typography.css"> -->
<!-- <link rel="stylesheet" href="assets/css/default-css.css"> -->
<!-- <link rel="stylesheet" href="assets/css/styles.css"> -->
<!-- <link rel="stylesheet" href="assets/css/responsive.css"> -->
<!-- <!-- modernizr css --> -->
<!-- <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script> -->
<!-- </head> -->

<demo:header/>

<body>

	<%@include file="../sidebarNavbar.jsp"%>
	<!-- main content area start -->
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
		<!--div class="main-content-inner"-->
		<!-- table success start -->

		<!--div class="card"-->

		<!--div class="card-body"-->

		<br /> <br />

		<div class="single-table">

				<div class="table-responsive">
					<kendo:grid  name="Empresa" pageable="true"  navigatable="true" groupable="true" columnMenu="true" width="95%">
    		<kendo:grid-toolbar>
        </kendo:grid-toolbar>
    		<kendo:dataSource pageSize="5"  >
    		<kendo:dataSource-transport>
    		<kendo:dataSource-transport-read url="/trazabilidad/IdeamServlet?action=IdeamEmpresa"/>
    		</kendo:dataSource-transport>
    		<kendo:dataSource-schema data="data" total="total">
    			<kendo:dataSource-schema-model id="emp_id">
    			<kendo:dataSource-schema-model-fields >
    					<kendo:dataSource-schema-model-field name="emp_razon_social" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="emp_nombre_comercial" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>                         
                        <kendo:dataSource-schema-model-field name="emp_numero_documento" type="number" >
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="departamento">
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="ciiu" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>                        
                        <kendo:dataSource-schema-model-field name="emp_direccion" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="emp_telefono" type="number">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="emp_ext" type="number">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="emp_cc_represen" type="number">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="emp_rep_email" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="emp_rep_nombre" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="conGen" type="number" editable="false">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="conTrn" type="number" editable="false">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="conGes" type="number" editable="false">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="conSed" type="number" editable="false">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
    			</kendo:dataSource-schema-model-fields>
    			</kendo:dataSource-schema-model>
    		</kendo:dataSource-schema>
    		</kendo:dataSource>
    		<kendo:grid-columns>
<!--     		 template="#: ciiu.cii_nombre #" editor="ciuuEditor"  -->
    				<kendo:grid-column title="Razon Social" field="emp_razon_social" width="150px"></kendo:grid-column>
    				<kendo:grid-column title="Nombre Comercial" field="emp_nombre_comercial" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="Nit" field="emp_numero_documento" width="180px" format="{0:n0}"></kendo:grid-column>
    				<kendo:grid-column title="Direccion" field="emp_direccion" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="Telefono" field="emp_telefono" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="Ext" field="emp_ext" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="CC representante" field="emp_cc_represen" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="Email Representante" field="emp_rep_email" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="Nombre Representante" field="emp_rep_nombre" hidden="true"></kendo:grid-column>
    				<kendo:grid-column title="ciuu4"  field="ciiupr" template="#:ciiupr.ciipr_nombre #" editor="ciuuEditor" hidden="true" ></kendo:grid-column>    				
    				<kendo:grid-column title="Departamento" field="departamento" template="#: departamento.dept_nombre #"  editor="desparEditor"/>
    				<kendo:grid-column title="Generadores" field="conGen" ></kendo:grid-column>
    				<kendo:grid-column title="Transportadores" field="conTrn" ></kendo:grid-column>
    				<kendo:grid-column title="Gestors" field="conGes" ></kendo:grid-column>
    				<kendo:grid-column title="Establecimientos" field="conSed" editable="false"></kendo:grid-column>	
    		</kendo:grid-columns>
    		</kendo:grid>
        			
        

		
		</div>
			
			<script type="text/javascript">
			function desparEditor(container,option)
			{
				$("<input data-text-field='dept_nombre' data-value-field='id_dept' data-bind='value: "+option.field+"'/>")
				.appendTo(container)
				.kendoDropDownList({
						dataSource:{
							transport:{
								read:"/trazabilidad/combServlet?action=combDepa"
								}
							}
					})
			}

			function ciuuEditor(container,option)
			{
				$("<input data-text-field='cii_nombre' data-value-field='cii_id' data-bind='value: "+option.field+"'/>")
				.appendTo(container)
				.kendoDropDownList({
						dataSource:{
							transport:{
								read:"/trazabilidad/combServlet?action=combCiiu"
								}
							}
					})
			}
			</script>
		</div>
		<!--/div-->
		<!--/div-->

		<!-- table success end -->
		<!--/div-->
		<!-- main content area end -->
		<!-- footer area start-->
		<demo:footer/>

</body>

</html>
