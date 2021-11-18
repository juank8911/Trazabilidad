<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<title>sdstrp - Residuo</title>
</head>

<body>

	<!-- main content area start -->

	<div class="col-9">
		<div class="row align-items-center">
			<div class="col-sm-7">
				<div class="breadcrumbs-area">
					<h4 class="page-title pull-left">Salidas</h4>
					<ul class="breadcrumbs pull-left">
						<li><span> en el sistema de informaci�n</span></li>
					</ul>
				</div>
			</div>
			<!-- FIN DE MENU  -->
		</div>


		<div>
			<!-- /////////////////////////////////////////////////////////////// -->

			<div class="row-10">
				<div id="historicoDecla" data-role="grid" class="k-grid k-widget k-grid-display-block" style="width: 95%;">
					<div class="k-toolbar k-grid-toolbar">
						<a role="button" class="k-button k-button-icontext k-grid-excel"
							href="#"><span class="k-icon k-i-file-excel"></span>Exportar
							a Excel</a>
					</div>
					<div class="k-grid-header" style="padding-right: 18px;">
						<div class="k-grid-header-wrap k-auto-scrollable">
							<table role="grid">
								<colgroup>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
									<col>
								</colgroup>
								<thead role="rowgroup">
									<tr role="row">
<th scope="col" role="columnheader" data-field="dec_id" aria-haspopup="true" rowspan="1" data-title="Numero de Declaracion" data-index="0" id="fcdf3332-cf3e-47ca-9d8c-fc987ae5b46b" class="k-header k-with-icon" data-role="columnmenu"><a class="k-header-column-menu" href="#" title="Configuración de columnas" aria-label="Configuración de columnas" tabindex="-1"><span class="k-icon k-i-more-vertical"></span></a>Numero de Declaracion</th>
<th scope="col" role="columnheader" data-field="dec_gen_fecha_trn" aria-haspopup="true" rowspan="1" data-title="Fecha de Envio" data-index="1" id="da91ba3e-5d52-40ec-91f8-8a5e4ae4aa93" class="k-header k-with-icon" data-role="columnmenu"><a class="k-header-column-menu" href="#" title="Configuración de columnas" aria-label="Configuración de columnas" tabindex="-1"><span class="k-icon k-i-more-vertical"></span></a>Fecha de Envio</th>
<th scope="col" role="columnheader" data-field="sedGen.sed_nombre" aria-haspopup="true" rowspan="1" data-title="Generador" data-index="2" id="edc2f790-16a9-4b26-9ae9-78720dcf9500" class="k-header k-with-icon" data-role="columnmenu"><a class="k-header-column-menu" href="#" title="Configuración de columnas" aria-label="Configuración de columnas" tabindex="-1"><span class="k-icon k-i-more-vertical"></span></a>Generador</th> 
<th scope="col" role="columnheader" data-field="sedGes.sed_nombre" aria-haspopup="true" rowspan="1" data-title="Gestor" data-index="3" id="ce2e4901-00d6-48f2-86fa-53eadcc0d717" class="k-header k-with-icon" data-role="columnmenu"><a class="k-header-column-menu" href="#" title="Configuración de columnas" aria-label="Configuración de columnas" tabindex="-1"><span class="k-icon k-i-more-vertical"></span></a>Gestor</th> 
<th scope="col" role="columnheader" data-field="tRes" aria-haspopup="true" rowspan="1" data-title="Corriente Residuos" data-index="4" id="f0835447-e9ee-406a-9346-28edbbd7d0c8" class="k-header k-with-icon" data-role="columnmenu"><a class="k-header-column-menu" href="#" title="Configuración de columnas" aria-label="Configuración de columnas" tabindex="-1"><span class="k-icon k-i-more-vertical"></span></a>Corriente Residuos</th> 
<th scope="col" role="columnheader" data-field="pesoGen" aria-haspopup="true" rowspan="1" data-title="Cantidad Total (Kg)" data-index="5" id="c2665f62-ecc0-4db3-8378-2bcf7bb36f55" class="k-header k-with-icon" data-role="columnmenu"><a class="k-header-column-menu" href="#" title="Configuración de columnas" aria-label="Configuración de columnas" tabindex="-1"><span class="k-icon k-i-more-vertical"></span></a>Cantidad Total (Kg)</th>
										<th scope="col" role="columnheader" data-field="estado"
											aria-haspopup="true" rowspan="1" data-title="Estado"
											data-index="6" id="d4a939ad-6be4-42e9-9ea9-b0b8a25eff4d"
											class="k-header k-with-icon" data-role="columnmenu"><a
											class="k-header-column-menu" href="#"
											title="Configuración de columnas"
											aria-label="Configuración de columnas" tabindex="-1"><span
												class="k-icon k-i-more-vertical"></span></a>Estado</th>
										<th scope="col" id="b5937f9d-8068-4c95-af5e-b741ca91342f"
											rowspan="1" data-index="7" class="k-header">Ver</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
					<div class="k-grid-content k-auto-scrollable">
						<table role="grid">
							<colgroup>
								<col>
								<col>
								<col>
								<col>
								<col>
								<col>
								<col>
								<col>
							</colgroup>
							<tbody role="rowgroup">
								<tr class="k-master-row" data-uid="a12f7d18-a761-4bdd-baba-6812cf208e55" role="row">
									<td class="" role="gridcell">240</td>
									<td class="" role="gridcell">N/A</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3160</td>
									<td class="" role="gridcell">0</td>
									<td class="" role="gridcell">No Enviada</td>
									<td class="k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-alt k-master-row"
									data-uid="f26490bd-ec49-4434-8361-9a95d807d9de" role="row">
									<td class="" role="gridcell">227</td>
									<td class="" role="gridcell">N/A</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3020</td>
									<td class="" role="gridcell">0</td>
									<td class="" role="gridcell">No Enviada</td>
									<td class="k-command-cell k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-master-row"
									data-uid="a152dbdb-2d68-4feb-99d8-02b2c4aa632e" role="row">
									<td class="" role="gridcell">241</td>
									<td class="" role="gridcell">N/A</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3020</td>
									<td class="" role="gridcell">0</td>
									<td class="" role="gridcell">No Enviada</td>
									<td class="k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-alt k-master-row"
									data-uid="c06b4455-2e85-40d6-846d-10b806f17f1e" role="row">
									<td class="" role="gridcell">242</td>
									<td class="" role="gridcell">N/A</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3150</td>
									<td class="" role="gridcell">0</td>
									<td class="" role="gridcell">No Enviada</td>
									<td class="k-command-cell k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-master-row"
									data-uid="b032c453-9c63-4c0f-8854-30e364ad14b3" role="row">
									<td class="" role="gridcell">245</td>
									<td class="" role="gridcell">2021-11-12 21:31:09.701</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3160</td>
									<td class="" role="gridcell">100</td>
									<td class="" role="gridcell">Enviada</td>
									<td class="k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-alt k-master-row"
									data-uid="e7d5410f-4c83-4fb7-888a-0bb8e84f76fc" role="row">
									<td class="" role="gridcell">54</td>
									<td class="" role="gridcell">2021-09-17 00:00:00.0</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A4040</td>
									<td class="" role="gridcell">1000</td>
									<td class="" role="gridcell">Finalizada</td>
									<td class="k-command-cell k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-master-row"
									data-uid="b9730a22-ff14-4de8-a47b-f5f626ced59d" role="row">
									<td class="" role="gridcell">55</td>
									<td class="" role="gridcell">2021-09-17 00:00:00.0</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3110</td>
									<td class="" role="gridcell">200</td>
									<td class="" role="gridcell">Finalizada</td>
									<td class="k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-alt k-master-row"
									data-uid="f4a9078d-d6b9-45f9-9bf4-f745f5ba1d03" role="row">
									<td class="" role="gridcell">61</td>
									<td class="" role="gridcell">2021-09-20 00:00:00.0</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">A3160, A2060</td>
									<td class="" role="gridcell">824</td>
									<td class="" role="gridcell">Finalizada</td>
									<td class="k-command-cell k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-master-row"
									data-uid="d9e59791-e91a-4051-a3a3-d885558f6b84" role="row">
									<td class="" role="gridcell">103</td>
									<td class="" role="gridcell">2021-09-21 00:00:00.0</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">Y2</td>
									<td class="" role="gridcell">500</td>
									<td class="" role="gridcell">Finalizada</td>
									<td class="k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
								<tr class="k-alt k-master-row"
									data-uid="dba4781b-b673-4d71-b158-a3b30f074ca0" role="row">
									<td class="" role="gridcell">143</td>
									<td class="" role="gridcell">N/A</td>
									<td class="" role="gridcell">Sede Gene</td>
									<td class="" role="gridcell">Sede Gest</td>
									<td class="" role="gridcell">Y9</td>
									<td class="" role="gridcell">0</td>
									<td class="" role="gridcell">No Enviada</td>
									<td class="k-command-cell k-command-cell" role="gridcell"><a
										role="button" class="k-button k-button-icontext k-grid-view"
										href="#">view</a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="k-pager-wrap k-grid-pager k-widget k-floatwrap"
						data-role="pager">
						<a href="#" aria-label="Ir a la primera página"
							title="Ir a la primera página"
							class="k-link k-pager-nav k-pager-first k-state-disabled"
							data-page="1" tabindex="-1"><span
							class="k-icon k-i-arrow-end-left"></span></a><a href="#"
							aria-label="Ir a la página anterior"
							title="Ir a la página anterior"
							class="k-link k-pager-nav k-state-disabled" data-page="1"
							tabindex="-1"><span class="k-icon k-i-arrow-60-left"></span></a>
						<div class="k-pager-numbers-wrap">
							<select class="k-dropdown"><option value="1"
									selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option></select>
							<ul class="k-pager-numbers">
								<li><span class="k-link k-state-selected">1</span></li>
								<li><a tabindex="-1" href="#" class="k-link" data-page="2">2</a></li>
								<li><a tabindex="-1" href="#" class="k-link" data-page="3">3</a></li>
								<li><a tabindex="-1" href="#" class="k-link" data-page="4">4</a></li>
								<li><a tabindex="-1" href="#" class="k-link" data-page="5">5</a></li>
								<li><a tabindex="-1" href="#" class="k-link" data-page="6">6</a></li>
								<li><a tabindex="-1" href="#" class="k-link" data-page="7">7</a></li>
							</ul>
						</div>
						<a href="#" aria-label="Ir a la página siguiente"
							title="Ir a la página siguiente" class="k-link k-pager-nav"
							data-page="2" tabindex="-1"><span
							class="k-icon k-i-arrow-60-right"></span></a><a href="#"
							aria-label="Ir a la última página"
							title="Ir a la última página"
							class="k-link k-pager-nav k-pager-last" data-page="7"
							tabindex="-1"><span class="k-icon k-i-arrow-end-right"></span></a><span
							class="k-pager-info k-label">Elementos mostrados 1 - 10 de
							65</span>
					</div>
				</div>
				<script>
					jQuery(function() {
						jQuery("#historicoDecla")
								.kendoGrid(
										{
											"toolbar" : [ {
												"name" : "excel"
											} ],
											"excel" : {
												"filterable" : true,
												"fileName" : "Reporte Mensual.xlsx",
												"proxyURL" : "/trazabilidad/informesServlet?action=histLisGen"
											},
											"columns" : [
													{
														"field" : "dec_id",
														"title" : "Numero de Declaracion"
													},
													{
														"template" : "#if(dec_gen_fecha_trn == 'null'){# N/A #}else{# #: dec_gen_fecha_trn #  #}#",
														"field" : "dec_gen_fecha_trn",
														"format" : "{0: yyyy-MM-dd}",
														"title" : "Fecha de Envio"
													},
													{
														"field" : "sedGen.sed_nombre",
														"title" : "Generador"
													},
													{
														"field" : "sedGes.sed_nombre",
														"title" : "Gestor"
													},
													{
														"field" : "tRes",
														"title" : "Corriente Residuos"
													},
													{
														"field" : "pesoGen",
														"title" : "Cantidad Total (Kg)"
													}, {
														"field" : "estado",
														"title" : "Estado"
													}, {
														"title" : "Ver",
														"command" : [ {
															"name" : "view"
														} ]
													} ],
											"columnMenu" : true,
											"width" : "95%",
											"pageable" : true,
											"dataSource" : {
												"pageSize" : 10.0,
												"transport" : {
													"read" : {
														"url" : "/trazabilidad/informesServlet?action=histLisGen"
													}
												}
											}
										});
					})
				</script>
				<!-- /////////////////////////////////////////////////////////////// -->

			</div>
		</div>
		<!-- page title area end -->
		<!-- main content area inicio -->


		<!-- main content area end -->
	</div>
	<!-- footer area start-->
	<demo:footer />
</body>

</html>