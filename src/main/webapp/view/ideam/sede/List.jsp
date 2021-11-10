<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<!-- <!DOCTYPE html> -->
<!-- <html class="no-js" lang="en"> -->

<!-- <head> -->
<!-- <meta charset="utf-8"> -->
<!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
<!-- <title>sdstrp - Establecimiento</title> -->
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
</head>
<body>

	<%@include file="../sidebarNavbar2.jsp"%>

	<!-- main content area start -->
	<div class="col">

		<!-- page title area start -->
		<div>
			<div class="row align-items-center">
				<div class="col-sm-6">
					<div class="breadcrumbs-area">
						<h4 class="page-title pull-left">Listado de Establecimiento</h4>
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
		<div class="row">
			<div class="table-responsive">
						
				<p>
					<label style="color: green; width: 100%; text-align: left;">${infoMessage}</label>
				</p>
				<p>
					<label style="color: red; width: 100%; text-align: left;">${errorMessage}</label>
				</p>
				
			
				<kendo:grid name="Sedes" pageable="true" navigatable="true" groupable="true" columnMenu="true" width="95%">
				<kendo:grid-toolbar>
        				<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
        		</kendo:grid-toolbar>
        		<kendo:grid-excel fileName="Reporte Mensual.xlsx" filterable="true" proxyURL="/trazabilidad/IdeamServlet?action=outExcel" />
				<kendo:dataSource pageSize="5">
					<kendo:dataSource-transport>
						<kendo:dataSource-transport-read url="/trazabilidad/IdeamServlet?action=IdeamSede"></kendo:dataSource-transport-read>
					</kendo:dataSource-transport>
					<kendo:dataSource-schema data="data" total="total">
							<kendo:dataSource-schema-model id="sed_id">
									<kendo:dataSource-schema-model-fields>
											<kendo:dataSource-schema-model-field name="sed_nombre">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
											<kendo:dataSource-schema-model-field name="empresa">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
											<kendo:dataSource-schema-model-field name="departamento">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
											<kendo:dataSource-schema-model-field name="municipio">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
											<kendo:dataSource-schema-model-field name="sed_direccion">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
											<kendo:dataSource-schema-model-field name="sed_telefono_n">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
											<kendo:dataSource-schema-model-field name="sed_telefono_ext">
												<kendo:dataSource-schema-model-field-validation required="true" />
											</kendo:dataSource-schema-model-field>
									</kendo:dataSource-schema-model-fields>
							</kendo:dataSource-schema-model>
					</kendo:dataSource-schema>
				</kendo:dataSource>
				<kendo:grid-columns>
				<kendo:grid-column title="Nombre Establecimiento" field="sed_nombre"/>
				<kendo:grid-column title="Departamento" field="departamento" template="#: departamento.dept_nombre #"    editor="loadDrops" hidden="true"/>
				<kendo:grid-column title="Municipio" field="municipio" template="#: municipio.munic_nombre #"  editor="loadDrops" hidden="true"/>
				<kendo:grid-column title="Empresa" field="empresa.emp_nombre_comercial" />
				<kendo:grid-column title="telefono" field="sed_telefono_n" hidden="true"/>
				<kendo:grid-column title="Ext" field="sed_telefono_ext" hidden="true"/>
				<kendo:grid-column title="Generador" field="sed_generador"/>
				<kendo:grid-column title="Transportador" field="sed_transportador"/>
				<kendo:grid-column title="Direccion" field="sed_direccion" hidden="true"/>
				<kendo:grid-column title="Gestor" field="sed_gestor"/>
				</kendo:grid-columns>
				</kendo:grid>

			</div>
		<script type="text/javascript">
		function deparEditor(container,option)
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
		};

		function loadDrops(container,option)
		{
			var valor;
			window.alert("cagando");
			$('<input required name="departamento">')
            .appendTo(container)
            .kendoDropDownList({
                autoBind: true,
                dataTextField: "dept_nombre",
                dataValueField: "id_dept",
                dataSource: {
                	transport:{
						read:"/trazabilidad/combServlet?action=combDepa"
						}
                },
                change: function(e) {
                	valor = this.value();
                    // Use the value of the widget
                    window.alert('el valor')
                    window.alert(valor)

                  }
            })

            window.alert(valor);
			$('<input required name="municipio">')
            .appendTo(container)
            .kendoDropDownList({
            	cascadeFrom: valor,
                autoBind: true,
                dataTextField: "munic_nombre",
                dataValueField: "id_munic",
                dataSource: {
                	serverFiltering: true,
                	transport:{
						read:"/trazabilidad/combServlet?action=combMuni"
						}
                }
            })
		};

		function loadMun(container,option)
		{
			$('<input required name="municipio">')
            .appendTo(container)
            .kendoDropDownList({
            	cascadeFrom: "id_dept",
                autoBind: false,
                dataTextField: "munic_nombre",
                dataValueField: "id_munic",
                dataSource: {
                	transport:{
						read:"/trazabilidad/combServlet?action=municipio",
						parameterMap: function (options, operation) {
							window.alert(value);
		            	return {
		            		departamento: value
		                }
						
					}
						
						}
                }
            });
		};

			function muniEditor(container,option)
			{
				$("<input data-text-field='munic_nombre' data-value-field='id_munic' data-bind='value: "+option.field+"'/>")
				.appendTo(container)
				.kendoDropDownList({
					autoBind: false,
	                	cascadeFrom: "departamento",
						dataSource:{
							serverFiltering: true,
							transport:{
								read:"/trazabilidad/combServlet?action=combMuni",
					            parameterMap: function (options, operation) {
										window.alert(options.filter.value);
					            	return {
					            		departamento: options.filter.filters[0]
					                }
									
								}
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
		<div class="row">
		<demo:footer/>
		</div>
</body>

</html>
