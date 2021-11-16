<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


    <demo:header/>
    <title>sdstrp - Declaracion</title>
    </head>
    <body>
       <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9">
			<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>
                <!-- page title area start -->
                <div class="row-10">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Historico </h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Transportador</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
		<div class="row-10">
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
    				<kendo:grid-column title="Fecha de Envio" field="dec_gen_fecha_trn" format="{0: yyyy-MM-dd}" template="#if(dec_gen_fecha_trn == 'null'){# N/A #}else{# #: dec_gen_fecha_trn #  #}#"></kendo:grid-column>
    				<kendo:grid-column title="Generador" field="sedGen.sed_nombre"></kendo:grid-column>
    				<kendo:grid-column title="Gestor" field="sedGes.sed_nombre"></kendo:grid-column>
    				<kendo:grid-column title="Corriente Residuos" field="tRes"></kendo:grid-column>
    				<kendo:grid-column title="Cantidad Total (Kg)" field="pesoGen"></kendo:grid-column>
    				<kendo:grid-column title="Estado" field="estado"></kendo:grid-column>
    				<kendo:grid-column title="Ver">
    				<kendo:grid-column-command>
            				<kendo:grid-column-commandItem name="view" />            					
            			</kendo:grid-column-command>
    				</kendo:grid-column>
    				
    			</kendo:grid-columns>
			</kendo:grid>
		</div>    
		</div>          
			<demo:footer/>

    </body>

</html>
