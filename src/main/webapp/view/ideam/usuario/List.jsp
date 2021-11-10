<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header/>
</head>
    <body>
       <%@include file ="../sidebarNavbar2.jsp" %>
       
            <!-- sidebar menu area end -->
            <!-- main content area start -->
            <div class="col">

                <!-- page title area start -->
                <div class="row">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Usuarios</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Registrados en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                </div>
                <!-- page title area end -->
                <div class="row">
                    <!-- table success start -->

                    <div class="card">
                        <div class="card-body">
                            <div class="text-uppercase bg-success mb-3">
                           <button type="button" class="fa fa-newspaper-o btn btn-success"> Columnas</button>
                           <button type="button" class="fa fa-floppy-o btn btn-success">Exportar</button>
                           <div class="pull-right">
                                <form action="#">
                                <input type="text" name="search" placeholder="Buscar..." required="">
                                <i class="ti-search col-md-1"></i>
                            </form>
                           </div>
                           </div>
                           
                           			<kendo:grid name="usuario"  pageable="true" groupable="true" columnMenu="true" width="99%">
                           				<kendo:grid-toolbar>
                           					<kendo:grid-toolbarItem name="excel"></kendo:grid-toolbarItem>
                           				</kendo:grid-toolbar>
                           				<kendo:grid-excel fileName="Usuarios_autoridad.xlsx" filterable="true" proxyURL="/trazabilidad/IdeamServlet?action=outExcel" />
                           					<kendo:dataSource pageSize="5">              
                           							<kendo:dataSource-transport>
                           									<kendo:dataSource-transport-read url="/trazabilidad/IdeamServlet?action=IdemUsu"/>
                           							</kendo:dataSource-transport>
                           							<kendo:dataSource-schema data="data" total="total"></kendo:dataSource-schema>
                           					</kendo:dataSource>
                           							<kendo:grid-columns>
                           									<kendo:grid-column title="Identificacion" field="usr_documento"/>
                           									<kendo:grid-column title="Usuario" field="usr_nombre"/>
                           									<kendo:grid-column title="Estado" field="estadoA"/>                           									
                           							</kendo:grid-columns>
                           					
                           			</kendo:grid>
                           			



                        </div>
                    </div>

                    <!-- table success end -->
                </div>
                <!-- main content area end -->
                <!-- footer area start-->
                <div class="row">
               <demo:footer/>
				</div>
    </body>

</html>
