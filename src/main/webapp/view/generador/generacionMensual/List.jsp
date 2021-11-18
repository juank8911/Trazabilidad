<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<demo:header/>
<title>sdstrp - Reporte Mesual</title>
</head>

    <body>
   
        <%@include file="../sidebarNavbar2.jsp"%>
<%--         <demo:slideGen/> --%>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.4.0/jszip.min.js"></script>
            <!-- main content area start -->
            <div class="col-9">
            
            <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Reporte Mensual</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">Registros en el sistema de informacion</span></li>
                            </ul>
            			</div>

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Reporte Mensual</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Registros en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                    
                </div>
                
                <div class="row align-items-center">
   
          <kendo:grid  name="Residuos" groupable="true" pageable="true" columnMenu="true" width="99%">
    		<kendo:grid-toolbar>
        				<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
        			</kendo:grid-toolbar> 
        			<kendo:grid-excel fileName="Reporte Mensual.xlsx" filterable="true" proxyURL="/trazabilidad/informesServlet?action=histLisGen" />
    		<kendo:dataSource pageSize="10"  >
		        <kendo:dataSource-aggregate>  
		        	<kendo:dataSource-aggregateItem aggregate="count" field="tipo_res" />  
		        	               		        		      
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mEnero"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mFebrero"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mMarzo"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mAbril"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mMayo"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mJunio"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mJulio"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mAgosto"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mSeptiembre"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mOctubre"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mNoviembre"/>
			        <kendo:dataSource-aggregateItem aggregate="sum" field="mDiciembre"/>		
		        </kendo:dataSource-aggregate>
    			
    		<kendo:dataSource-transport>
    		<kendo:dataSource-transport-read url="/trazabilidad/informesServlet?action=genRepMen"/>
    		</kendo:dataSource-transport>
    		</kendo:dataSource>
    		<kendo:grid-columns>
    				<kendo:grid-column title="Tipo Residuo" field="tipo_res" footerTemplate="Total Residuos: #=count#"/>
    				<kendo:grid-column title="Estado Materia" field="estado" footerTemplate="Peso Total:"/>
    		
    		
    		<kendo:grid-column-group title="Cantidad en Kg">
    			<kendo:grid-column-group-columns>
			   		<kendo:grid-column title="Enero" field="mEnero" footerTemplate=" #=sum#"/>
			   		<kendo:grid-column title="Febrero" field="mFebrero" footerTemplate="#=sum#"/> 
			   		<kendo:grid-column title="Marzo" field="mMarzo" footerTemplate="#=sum#"/> 	 
			   		<kendo:grid-column title="Abril" field="mAbril" footerTemplate="#=sum#"/> 	 
			   		<kendo:grid-column title="Mayo" field="mMayo" footerTemplate="#=sum#"/> 		 
			   		<kendo:grid-column title="Junio" field="mJunio" footerTemplate="#=sum#"/> 	 
			   		<kendo:grid-column title="Julio" field="mJulio" footerTemplate="#=sum#"/> 
			   		<kendo:grid-column title="Agosto" field="mAgosto" footerTemplate="#=sum#"/>
			   		<kendo:grid-column title="Septiembre" field="mSeptiembre" footerTemplate="#=sum#"/>
			   		<kendo:grid-column title="Octubre" field="mOctubre" footerTemplate=" #=sum#"/>
			   		<kendo:grid-column title="Noviembre" field="mNoviembre" footerTemplate="#=sum#"/> 
			   		<kendo:grid-column title="Diciembre" field="mDiciembre" footerTemplate="#=sum#"/>   				
    			</kendo:grid-column-group-columns>
    	</kendo:grid-column-group>
    	</kendo:grid-columns>
    		</kendo:grid>
                </div>            
                 </div>            
                                   
                <!-- main content area end -->
                <!-- footer area start-->
               <demo:footer/>
               
    </body>

</html>