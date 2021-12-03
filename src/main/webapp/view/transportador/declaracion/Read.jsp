<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


    <demo:header/>
    <title>sdstrp - Declaracion</title>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>
    </head>
    <body>
       <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9 ml-5">
            
            <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Historico</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Transportador</span></li>
                            </ul>
            			</div>
            			
			

		 <div class="row justify-content-md-center">
			<kendo:grid name="historicoDecla" pageable="true" columnMenu="true" width="95%" >
			        <kendo:grid-toolbar>
        				<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
        			</kendo:grid-toolbar> 
        			<kendo:grid-excel fileName="Reporte Mensual.xlsx" filterable="true" proxyURL="/trazabilidad/informesServlet?action=histLisGen" />
				<kendo:dataSource pageSize="10"  >
    			<kendo:dataSource-transport>
    			<kendo:dataSource-transport-read url="/trazabilidad/informesServlet?action=histLisGen"/>
    			</kendo:dataSource-transport>
    			</kendo:dataSource>
    			<kendo:grid-columns>
    				<kendo:grid-column title="Numero de Declaracion" field="dec_id"></kendo:grid-column>
    				<kendo:grid-column title="Fecha de Envio" field="dec_gen_fecha_trn" format="{0: yyyy-MM-dd}"></kendo:grid-column>
    				<kendo:grid-column title="Generador" field="sedGen.sed_nombre"></kendo:grid-column>
    				<kendo:grid-column title="Gestor" field="sedGes.sed_nombre"></kendo:grid-column>
    				<kendo:grid-column title="Corriente Residuos" field="tRes"></kendo:grid-column>
    				<kendo:grid-column title="Cantidad Total (Kg)" field="pesoGen"></kendo:grid-column>
    				<kendo:grid-column title="Estado" field="estado"></kendo:grid-column>
    				<kendo:grid-column title="Ver">
    				<kendo:grid-column-command>
            				<kendo:grid-column-commandItem name="ver" text="Ver" >
            				<kendo:grid-column-commandItem-click>
            					<script>
                            function showDetails(e) {
                                var detailsTemplate = kendo.template($("#template").html());

                                e.preventDefault();

                                var dataItem = this.dataItem($(e.currentTarget).closest("tr"));
                                var wnd = $("#details").data("kendoWindow");

                                wnd.content(detailsTemplate(dataItem));
                                wnd.center().open();
                            }
                            </script>
            				</kendo:grid-column-commandItem-click>
            				</kendo:grid-column-commandItem>            					
            			</kendo:grid-column-command>            					

    				</kendo:grid-column>
    				
    			</kendo:grid-columns>
			</kendo:grid>
		</div> 
				<script type="text/x-kendo-template" id="template">
    <div id="details-container">
		<h2>Numero de declaracion: #= dec_id #</h2>

        <p>Fecha de Envio: #= kendo.toString((dec_gen_fecha_trn), "dd-MM-yyyy")  #</p>

		<p>Fecha de Aprobacion: #= kendo.toString((dec_trn_fecha_trn), "dd-MM-yyyy" #</p>

		<p>Fecha de Finalizacion: #= kendo.toString((dec_ges_fecha_ges), "dd-MM-yyyy") #</p>

		<h4>Observaciones</h4>
        <em></em>
        <dl>
        </dl>
    </div>
    </script>

    <kendo:window name="details" modal="true" draggable="true" visible="false" />
<style type="text/css">
     #details-container
     {
         padding: 10px;
     }

     #details-container h2
     {
         margin: 0;
     }

     #details-container em
     {
         color: #8c8c8c;
     }

     #details-container dt
     {
         margin:0;
         display: inline;
     }
 </style>   
		</div>          
			<demo:footer/>

    </body>

</html>
