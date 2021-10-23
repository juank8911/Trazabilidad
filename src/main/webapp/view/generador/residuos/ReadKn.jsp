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
<demo:header />
<body>



	<%@include file="../sidebarNavbar.jsp"%>
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
						<li><span> en el sistema de información</span></li>
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
				<a type="button" class="btn btn-success mb-3 ti-plus pull-right"
					href="controlGenerador?action=residuoCreaGenera" class="text-white">
					Crear Residuo</a>
			</div>

		</div>
	</div>

	<p>
		<label style="color: green; width: 100%; text-align: left;">${infoMessage}</label>
	</p>
	<p>
		<label style="color: red; width: 100%; text-align: left;">${errorMessage}</label>
	</p>


	<div class="container">


			<kendo:grid name="Residuos" groupable="true" pageable="true"
				columnMenu="true" width="99%">
				<kendo:grid-toolbar>
					<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
				</kendo:grid-toolbar>
				<kendo:grid-excel fileName="Reporte Mensual.xlsx" filterable="true"
					proxyURL="/trazabilidad/informesServlet?action=histLisGen" />
				<kendo:dataSource pageSize="4">
					<kendo:dataSource-transport>
						<kendo:dataSource-transport-read
							url="/trazabilidad/residuosServlet?action=residuosAll" />
						<kendo:dataSource-transport-update
							url="/trazabilidad/controlGenerador?action=updateResiduo" />
					</kendo:dataSource-transport>
					<kendo:dataSource-schema>
						<kendo:dataSource-schema-model id="res_id">
							<kendo:dataSource-schema-model-fields>
								<kendo:dataSource-schema-model-field name="res_nombre"
									type="string">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="t_residuo">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="gestion_ubi">
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="tipo_gestion">
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="t_manejo">
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="estado_materia">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="tipo_empaque">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="tipo_embalaje">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="tPeligro">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="sede_transporte">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="sede_gen">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<kendo:dataSource-schema-model-field name="sede_ges">
									<kendo:dataSource-schema-model-field-validation required="true" />
								</kendo:dataSource-schema-model-field>
								<%--                         <kendo:dataSource-schema-model-field name="conGen" type="number" editable="false"> --%>
								<%--                         	<kendo:dataSource-schema-model-field-validation required="true" /> --%>
								<%--                         </kendo:dataSource-schema-model-field> --%>
								<%--                         <kendo:dataSource-schema-model-field name="conTrn" type="number" editable="false"> --%>
								<%--                         	<kendo:dataSource-schema-model-field-validation required="true" /> --%>
								<%--                         </kendo:dataSource-schema-model-field> --%>
								<%--                         <kendo:dataSource-schema-model-field name="conGes" type="number" editable="false"> --%>
								<%--                         	<kendo:dataSource-schema-model-field-validation required="true" /> --%>
								<%--                         </kendo:dataSource-schema-model-field> --%>
								<%--                         <kendo:dataSource-schema-model-field name="conSed" type="number" editable="false"> --%>
								<%--                         	<kendo:dataSource-schema-model-field-validation required="true" /> --%>
								<%--                         </kendo:dataSource-schema-model-field> --%>
							</kendo:dataSource-schema-model-fields>
						</kendo:dataSource-schema-model>
					</kendo:dataSource-schema>
				</kendo:dataSource>
				<kendo:grid-columns>
					<kendo:grid-column title="Descripcion" field="res_nombre" />
					<kendo:grid-column title="Corriente Residuo" field="t_residuo"
						template="#= t_residuo.tre_Id # : #= t_residuo.tre_nombre #" />
					<kendo:grid-column title="Ubicacion Gestion" field="gestion_ubi"
						template="#: gestion_ubi.ges_uNombre #" />
					<kendo:grid-column title="Tipo Gestion" field="tipo_gestion"
						template="#: tipo_gestion.gest_nombre #" />
					<kendo:grid-column title="Tipo manejo" field="t_manejo"
						template="#: t_manejo.tma_nombre #" />
					<kendo:grid-column title="Estado Materia" field="estado_materia"
						template="#: estado_materia.est_nombre #" />
					<kendo:grid-column title="Tipo Empaque" field="tipo_empaque"
						template="#: tipo_empaque.tem_nombre #" hidden="true" />
					<kendo:grid-column title="Tipo Empaque" field="tipo_embalaje"
						template="#: tipo_embalaje.temb_nombre #" hidden="true" />
					<kendo:grid-column title="Peligrosidad" field="tPeligro"
						template="#: tPeligro.pel_nombre #" hidden="true" />
					<kendo:grid-column title="Transportador" field="sede_transporte"
						template="#: sede_transporte.tra_nombre #" hidden="true" />
					<kendo:grid-column title="generador" field="sede_gen"
						template="#: sede_gen.gen_nombre #" hidden="true" />
					<kendo:grid-column title="Gestor" field="sede_ges"
						template="#: sede_ges.ges_nombre #" hidden="true" />



					<kendo:grid-column title="Opciones">
						<kendo:grid-column-command>
							<kendo:grid-column-commandItem name="editar" text="editar">
								<kendo:grid-column-commandItem-click>
									<script type="text/javascript">
            											function editar(e)
            											{
            												e.preventDefault();
            												var dataItem = this.dataItem($(e.currentTarget).closest("tr"));
            											    window.location.href = "/trazabilidad/controlGenerador?action=residuoActuaGenera&id="+dataItem.res_id;
//             												$.ajax({
// 															        url: "/trazabilidad/controlGenerador?action=residuoActuaGeneraCarg",
// 															        //send current record ID to the server
// 															        data: { id: dataItem.res_id },
// 															        success: function (data) {
// 															            //update the current dataItem with the received data from the server
// 															            //example data: {"OrderID":4,"OrderDate":"\/Date(1343941200000)\/","OrderDescription":"NewDescription","EmployeeId":4}
// 															            window.alert("Carga de ruta y envio");
// 															        	window.location.href = "/trazabilidad/controlGenerador?action=residuoActuaGenera";
// 															        }
// 															    })
                										}
            									</script>
								</kendo:grid-column-commandItem-click>
							</kendo:grid-column-commandItem>

						</kendo:grid-column-command>
					</kendo:grid-column>
				</kendo:grid-columns>
			</kendo:grid>
	</div>

	<br />
	<br />


	<script type="text/x-kendo-template" id="popupTemplate">
--
  <div class="k-edit-label" > 
        <label for="res_nombre">Nombre:</label>
    </div>
    <div class="k-edit-field">
        <input id="res_nombre" name="res_nombre" data-bind="value:res_nombre" required />
        <span class="k-invalid-msg" data-for="#: res_nombre #" ></span>
    </div>

  <div class="k-edit-label" > 
        <label for="t_residuo">Corriente Residuo:</label>
    </div>
    <div class="k-edit-field">
        <input id="t_residuo" name="t_residuo" data-bind="value: t_residuo.tre_Id" required width="250px" />
        <span class="k-invalid-msg" data-for="#: t_residuo.tre_Id #" ></span>
    </div>
 	agrevar gestion ubicacion aqui

  <div class="k-edit-label" > 
        <label for="gestion_ubi">Ubicacion:</label>
    </div>
    <div class="k-edit-field">
        <input id="gestion_ubi" name="tipo_gestion" data-bind="value:gestion_ubi.ges_uNombre" required />
        <span class="k-invalid-msg" data-for="#: tipo_gestion #" ></span>
    </div>

  <div class="k-edit-label" > 
        <label for="tipo_gestion">Tipo de Gestion:</label>
    </div>
    <div class="k-edit-field">
        <input id="tipo_gestion" name="tipo_gestion" data-bind="value:tipo_gestion.gest_nombre" required />
        <span class="k-invalid-msg" data-for="#: tipo_gestion #" ></span>
    </div>



    <div class="k-edit-label">
        <label for="t_manejo">Tipo manejo:</label>
    </div>
   <div class="k-edit-field">
        <input id="t_manejo" name="t_manejo" data-bind=" value:t_manejo.tma_nombre" required />
        <span class="k-invalid-msg" data-for="t_manejo"></span>
    </div>

  <div class="k-edit-label" > 
        <label for="estado_materia">Estado de la Materia</label>
    </div>
    <div class="k-edit-field">
        <input id="estado_materia" name="estado_materia" data-bind="value: estado_materia.est_nombre" required />
        <span class="k-invalid-msg" data-for="#: estado_materia #" ></span>
    </div>

  <div class="k-edit-label" > 
        <label for="emp_ext">Ext:</label>
    </div>
    <div class="k-edit-field">
        <input id="tipo_empaque" name="Tipo de Empaque" data-bind="value: tipo_empaque.tem_nombre" required />
        <span class="k-invalid-msg" data-for="#: tipo_empaque #" ></span>
    </div>

    <div class="k-edit-label">
        <label for="tipo_embalaje">Tipo de Embalaje:</label>
    </div>
   <div class="k-edit-field">
        <input id="tipo_embalaje" name="tipo_embalaje" data-bind=" value: tipo_embalaje.temb_nombre " required />
        <span class="k-invalid-msg" data-for="tipo_embalaje"></span>
    </div>

    <div class="k-edit-label">
        <label for="tPeligro">Peligrosidad:</label>
    </div>
   <div class="k-edit-field">
        <input id="tPeligro" name="tPeligro" data-bind=" value: tPeligro.pel_nombre " required />
        <span class="k-invalid-msg" data-for="tPeligro"></span>
    </div>

    <div class="k-edit-label">
        <label for="sede_transporte">Sede Transportador:</label>
    </div>
   <div class="k-edit-field">
        <input id="sede_transporte" name="sede_transporte.tra_nombre" data-bind=" value: sede_transporte.tra_nombre " required />
        <span class="k-invalid-msg" data-for="sede_transporte"></span>
    </div>


    <div class="k-edit-label">
        <label for="sede_ges">Gestor:</label>
    </div>
   <div class="k-edit-field">
        <input id="sede_ges" name="sede_ges" data-bind=" value: sede_ges.ges_nombre " required />
        <span class="k-invalid-msg" data-for="sede_ges"></span>
    </div>
----
 </script>

	<demo:footer />
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