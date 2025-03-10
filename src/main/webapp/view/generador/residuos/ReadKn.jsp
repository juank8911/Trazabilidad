
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
<style>
    #example {
        min-height: 350px;
    }
</style>

	 <style>
    #grid .k-grid-toolbar
    {
        padding: .6em 1.3em .6em .4em;
    }
    .category-label
    {
        vertical-align: middle;
        padding-right: .5em;
    }
    #category
    {
        vertical-align: middle;
    }
    .refreshBtnContainer 
    {
        display: inline-block;
    }
    .k-grid .toolbar 
    {
        margin-left: auto;
        margin-right: 0;
    }
 </style>
 
 </head>
<body>



	<%@include file="../sidebarNavbar2.jsp"%>
	<div class="col-9 ml-5">
	<!-- main content area start -->
	<kendo:dialog name="dialog" visible="false" title="Eliminar Residuo" closable="false" modal="false" close="onClose"
              content="<p>Esta seguro que desea <strong>Eliminar</strong> este residuo, una vez eliminado no podra ser recuperado <p>"
             >
    <kendo:dialog-actions>
        <kendo:dialog-action text="Eliminar" primary="true" />
        <kendo:dialog-action text="cancelar" />
    </kendo:dialog-actions>
</kendo:dialog>

<div class="modal fade" id="aceptDel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ELIMINAR!!</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Esta Seguro que desa eliminar este residuo, debe tener en cuante que una
        vez eliminado no sera posible recuoerarlo.
        Para eliminar el residio de click en eliminar,,,
        de lo contrario de click en cancelar...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" id="btndel" class="btn btn-danger">Eliminar</button>
      </div>
    </div>
  </div>
</div>
	<!-- page title area start -->
	
	<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Residuo</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">en el sistema de información</span></li>
                            </ul>
            			</div>

	<!-- page title area end -->
	<!-- main content area inicio -->

	<div class="row justify-content-md-center">
	
		<label style="color: green; width: 100%; text-align: left;">${infoMessage}</label>
		<label style="color: red; width: 100%; text-align: left;">${errorMessage}</label>

			<kendo:grid name="Residuos" groupable="true" sortable="true" resizable="true" pageable="true"
				columnMenu="true" width="99%">
				<kendo:grid-toolbar>
				
					<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>					
					<kendo:grid-toolbarItem name="crea" text="Crear Residuo">
						
					</kendo:grid-toolbarItem>
				</kendo:grid-toolbar>
				<kendo:grid-excel fileName="Residuos.xlsx" filterable="true"
					proxyURL="/trazabilidad/informesServlet?action=histLisGen" />
				<kendo:dataSource pageSize="4">
					<kendo:dataSource-transport>
						<kendo:dataSource-transport-read
							url="/trazabilidad/residuosServlet?action=residuosAll" dataType="json" type="POST" contentType="application/json"/> 
							<kendo:dataSource-transport-destroy 
							url="/trazabilidad/controlGenerador?action=eliminarResiGenerador" dataType="json" type="POST" contentType="application/json" />
								<kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options,type) { 	                		
	                		return JSON.stringify(options);	                		
	                	}
                	</script>
                </kendo:dataSource-transport-parameterMap>
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
							 								<kendo:grid-column-commandItem name="eliminar" text="eliminar" >
								 	 <kendo:grid-column-commandItem-click>
								 	 		<script type="text/javascript">
            											function eliminar(e)
            											{
            												var dialog = $('#dialog');
            												var table = $('#Residuos');
            												var modAc = $('#aceptDel');
            												table.fadeOut();
                											window.alert('rueba eliminar');
            												e.preventDefault();
            												var dataItem = this.dataItem($(e.currentTarget).closest("tr"));
            												console.log(dataItem);
            												 $.ajax({
            											            type: 'POST',
            											            url: 'residuosServlet?action=validate',
            											            data: {'id':dataItem.res_id},
            											            statusCode: {
            											                404: function () {
            											                    alert('pagina no encontrada');
            											                },
            											                500: function () {
            											                    alert('Error servidor');
            											                }
            											            },
            											            success: function (datos) {
																		window.alert(datos);
            											            	if(datos==true || datos=='true'){
                											            	window.alert('true dentro del if')
                											            	modAc.modal();                											            	 
//                 											            	dialog.data("kendoDialog").open();
//                 											            	$('#')
												
                											            	table.fadeIn();
                											            }
            											            	else{
            											            		
                											            	window.alert('false dentro del else');
//                 											            	dialog.data("kendoDialog").open();
																			var btndel =  document.getElementById("btndel");
																			btndel.setAttribute("data-id",dataItem.res_id);
// 																			moAc.Atrr('data-id',dataItem.res_id);
																			modAc.modal();
																			table.fadeIn()
//                 											            	eliminar.click(function () {
//                 											                   	window.alert('click en el boton')
//                 											                });
                											            	}
                    											            
            											            }

            											        });
//             												
                										}
            									</script>
								 	 </kendo:grid-column-commandItem-click>
								</kendo:grid-column-commandItem>
							<kendo:grid-column-commandItem name="edit" >
								<kendo:grid-column-commandItem-click>
									<script type="text/javascript">
            											function edit(e)
            											{
            												e.preventDefault();
            												var dataItem = this.dataItem($(e.currentTarget).closest("tr"));
            											    window.location.href = "/trazabilidad/controlGenerador?action=residuoActuaGenera&id="+dataItem.res_id;
//             											
                										}
            									</script>
								</kendo:grid-column-commandItem-click>
							</kendo:grid-column-commandItem>

						</kendo:grid-column-command>
					</kendo:grid-column>
				</kendo:grid-columns>
			</kendo:grid>
				<script type="text/x-kendo-template" id="popupTemplate">
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
 </script>
 
			<script type="text/javascript">
	$(function () {
	    var grid = $("#Residuos");
	    grid.find(".k-grid-toolbar").on("click", ".k-grid-crea", function (e) {
            e.preventDefault();
            window.location.href = "controlGenerador?action=residuoCreaGenera";
        });
	    
	});
</script>

<div class="modal fade" id="invalodDel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Imposible Eliminar</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Este Residuo no se puede eliminar por que ya existen declaraciones con el...
      </div>
      <div class="modal-footer">
        
        <button type="button" data-bs-dismiss="modal" class="btn btn-danger">Aceptar</button>
      </div>
    </div>
  </div>
</div>
   <script>
    $(document).ready(function () {
        var dialog = $('#dialog'),
                undo = $("#undo"),
                btndel = $('#btndel');
        

        undo.click(function () {
            dialog.data("kendoDialog").open();
            undo.fadeOut();
        });
    });

    
    btndel.click(function(e){
		e.preventDefault();
        e.stopImmediatePropagation();
		var button = $(this) // Button that triggered the modal
  		var id = button.data('id')
  		console.log(id);
		 $.ajax({
	            type: 'POST',
	            url: 'residuosServlet?action=validate',
	            data: {'id':dataItem.res_id},
	            statusCode: {
	                404: function () {
	                    alert('pagina no encontrada');
	                },
	                500: function () {
	                    alert('Error servidor');
	                }
	            },
	            success: function (datos) {
					window.alert(datos);
	            	
			            
	            }

	        });
  		
        })
   
				function onClose() {
					$("#undo").fadeIn();
					$('#Residuos').fadeIn();
				}
			</script>				
<span id="undo" style="display:none" class="k-button hide-on-narrow">Click here to open the dialog</span>


	</div>




 	<demo:footer />
 </div>

</body>

</html>