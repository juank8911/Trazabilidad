<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header/>
</head>
<body>

	<%@include file="../sidebarNavbar2.jsp"%>

	<!-- main content area start -->
	<div class="col-9 ml-5">


<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Establecimiento</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Registrados en el sistema de informacion</span></li>
                            </ul>
							<a href="control?action=sedeCrea" id="btnfloat" class="float">
				<i class="fa fa-plus my-float"></i>
				</a>

		</div>
		<!-- page title area end -->
		<!--div class="main-content-inner"-->
		<!-- table success start -->

		<!--div class="card"-->

		<!--div class="card-body"-->

		<div class="row justify-content-md-center">
			<div class="table-responsive">
								
					<label style="color: green; width: 100%; text-align: left;">${infoMessage}</label>
					<label style="color: red; width: 100%; text-align: left;">${errorMessage}</label>
		
				<kendo:grid  name="Sede" pageable="true" sortable="true" editable="true" navigatable="true" groupable="true" columnMenu="true" width="95%">
				
    		<kendo:grid-editable mode="popup"  >
    			<kendo:grid-editable-template>
					<script>
            			function() {

       					return $("#popupTemplate").html();
       					
                		// Code to handle the template event.
            			}

        </script>
    			</kendo:grid-editable-template>
    			<kendo:grid-edit>
    			<script >
    			function(e){
    				console.log(e.model);
    				var model = e.model;
    				var depa = model.departamento.dept_nombre;
    				var muni = model.municipio.munic_nombre;
    				var emp = model.empresa.emp_nombre_comercial;

    	            var empresa = $("#empresa").kendoDropDownList({
    	            	optionLabel: emp,
    	                autoBind: true,
    	                dataTextField: "emp_nombre_comercial",
    	                dataValueField: "emp_id",
    	                dataSource: {
    	                    serverFiltering: true,
    	                    transport: {
    	                        read: "/trazabilidad/autoridadServlet?action=autEmpresa"
    	                    }
    	                }
    	            }).data("kendoDropDownList");
    				
    				var departamento = $("#departamento").kendoDropDownList({
    					optionLabel: depa,
		                dataTextField: "dept_nombre",
		                dataValueField: "id_dept",
		                dataSource: {
		                    serverFiltering: true,
		                    transport: {
		                        read: "/trazabilidad/combServlet?action=combDepa"
		                    }
		                }
		            }).data("kendoDropDownList");

		       
		            var municipio = $("#municipio").kendoDropDownList({
		            	optionLabel: muni,
		                autoBind: false,
		                cascadeFrom: "departamento",
		                dataTextField: "munic_nombre",
		                dataValueField: "id_munic",
		                dataSource: {
		                    serverFiltering: true,
		                    transport: {
		                        read: "/trazabilidad/combServlet?action=combMuni"
		                    }
		                }
		            }).data("kendoDropDownList");
        			


    			}
    			</script>
    			</kendo:grid-edit>
    		</kendo:grid-editable>
				<kendo:grid-toolbar>
        				<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
<%--         				<kendo:grid-toolbarItem name="create" /> --%>
        		</kendo:grid-toolbar>
        		<kendo:grid-excel fileName="Establecimientosl.xlsx" filterable="true" proxyURL="/trazabilidad/autoridadServlet?action=outExcel" />
				<kendo:dataSource pageSize="5">
					<kendo:dataSource-transport>
						<kendo:dataSource-transport-read url="/trazabilidad/autoridadServlet?action=autSedes"></kendo:dataSource-transport-read>
						<kendo:dataSource-transport-update url="/trazabilidad/autoridadServlet?action=autSedesUpd"></kendo:dataSource-transport-update>
					</kendo:dataSource-transport>
					<kendo:dataSource-schema>
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
				<kendo:grid-column title="Nombre Establecimiento" field="sed_nombre" />
				<kendo:grid-column title="Departamento" field="departamento" template="#: departamento.dept_nombre #"     hidden="true"/>
				<kendo:grid-column title="Municipio" field="municipio" template="#: municipio.munic_nombre #"  hidden="true" />
				<kendo:grid-column title="Empresa" field="empresa" template="#: empresa.emp_nombre_comercial #" />
				<kendo:grid-column title="telefono" field="sed_telefono_n" hidden="true" />
				<kendo:grid-column title="Direccion" field="sed_direccion" hidden="true" />
				<kendo:grid-column title="Ext" field="sed_telefono_ext" hidden="true" />
				<kendo:grid-column title="Generador" field="sed_generador"/>
				<kendo:grid-column title="Transportador" field="sed_transportador" />
				<kendo:grid-column title="Direccion" field="sed_direccion" hidden="true" />
				<kendo:grid-column title="Gestor" field="sed_gestor" />
				<kendo:grid-column title="Opciones" >
					<kendo:grid-column-command>
            				<kendo:grid-column-commandItem name="edit" />            					
            		</kendo:grid-column-command>
            		</kendo:grid-column>
				</kendo:grid-columns>
				</kendo:grid>

			</div>
			
	<script type="text/x-kendo-template" id="popupTemplate">

  <div class="k-edit-label" > 

        <label for="sed_nombre">Nombre Establecimiento:</label>
    </div>
    <div class="k-edit-field">
        <input id="sed_nombre" name="sed_nombre" data-bind="value: sed_nombre" required />
        <span class="k-invalid-msg" data-for="sed_nombre" ></span>
    </div>

  <div class="k-edit-label" > 
        <label for="sed_direccion">Direccion:</label>
    </div>
    <div class="k-edit-field">
        <input id="sed_direccion" name="sed_direccion" data-bind="value: sed_direccion " required />
        <span class="k-invalid-msg" data-for="sed_direccion" ></span>
    </div>


  <div class="k-edit-label" > 
        <label for="empresa">Empresa:</label>
    </div>
    <div class="k-edit-field">
        <input id="empresa" name="empresa" data-bind="value: empresa.emp_nombre_comercial " required />
        <span class="k-invalid-msg" data-for="empresa" ></span>
    </div>

  <div class="k-edit-label" > 
        <label for="sed_telefono_n">Telefono:</label>
    </div>
    <div class="k-edit-field">
        <input id="sed_telefono_n" name="sed_telefono_n" data-bind="value: sed_telefono_n" type="number" required />
        <span class="k-invalid-msg" data-for=" sed_telefono_n " ></span>
    </div>

    <div class="k-edit-label">
        <label for="sed_telefono_ext">Ext:</label>
    </div>
   <div class="k-edit-field">
        <input id="sed_telefono_ext" name="sed_telefono_ext" data-bind=" value: sed_telefono_ext " required />
        <span class="k-invalid-msg" data-for="sed_telefono_ext"></span>
    </div>

    <div class="k-edit-label">
        <label for="departamento">Departamento:</label>
    </div>
   <div class="k-edit-field">
        <input id="departamento" name="departamento" data-bind=" value: departamento.dept_nombre " required />
        <span class="k-invalid-msg" data-for="departamento"></span>
    </div>

    <div class="k-edit-label">
        <label for="municipio">Municipio:</label>
    </div>
    <div class="k-edit-field">
        <input id="municipio" name="municipio" data-bind=" value: municipio.munic_nombre " required />
       <span class="k-invalid-msg" data-for="municipio"></span> </div>

    <div class="demo-section">
        <div class="settings-head"></div>
        <ul>
            <li>Notifications <input type="checkbox" id="notifications-switch" aria-label="Notifications Switch" checked="checked" /></li>
            <li>Send notifications <input id="mail-switch" aria-label="Mail Switch" /></li>
            <li>Always visible <input id="visible-switch" aria-label="Visible Switch" /></li>
            <li>Display real name <input id="name-switch" aria-label="Name Switch" /></li>
        </ul>
    </div>

 </script>
 <style type="text/css">
        .demo-section ul {
            margin: 0;
            padding: 0;
        }

            .demo-section ul li {
                list-style-type: none;
                margin: 0;
                padding: 10px 10px 10px 20px;
                min-height: 28px;
                line-height: 28px;
                vertical-align: middle;
                border-top: 1px solid rgba(128,128,128,.5);
            }

        .demo-section {
            min-width: 220px;
            margin-top: 50px;
            padding: 0;
        }

            .demo-section ul li .k-switch {
                float: right;
            }

        .settings-head {
            height: 66px;
            background: url('../content/web/switch/settings-title.png') no-repeat 20px 50% #2db245;
        }
    </style>
 <script>
    $(function () {
        $("#notifications-switch").kendoSwitch();

        $("#mail-switch").kendoSwitch({
            messages: {
                checked: "YES",
                unchecked: "NO"
            }
        });

        $("#visible-switch").kendoSwitch({
            checked: true
        });

        $("#name-switch").kendoSwitch();
    });
</script>
		
		</div>
		</div>
		<demo:footer/>
		

</body>

</html>
