<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />

        <title>sdstrp - Panel de Control</title>
      
        
        <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.common.min.css">
        <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2020.3.1118/styles/kendo.default.min.css">
   		<script src="assets/js/kendoV2.all.min.js"></script>
        <script src="assets/js/kendo.es-ES.js"></script>
    </head>

    <body>
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
           		<div class="col-10">
					<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Servicios y Residuos Autorizados</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">a la sede del gestor en el sistema de informacion</span></li>
                            </ul>
            			</div>


                <div class="row justify-content-md-center">
			<div class="card-body">

				<a type="button"
					class="btn btn-success mb-3 ti-plus pull-right text-white"
					href="ControlGestor?action=servicioCreaGestor">Crear Tipo de
					Residuo Autorizado </a>

			</div>
 
            <label style="color: green;width: 100%;text-align: left;">${infoMessage}</label> 
             <label style="color: red; width: 100%;text-align: left;">${errorMessage}</label>
        
                        
        <table id="grid">
            <thead>

                <tr>
                    <th scope="col">Corriente de Residuo<br/>

                    </th>
                    <th scope="col">Tipo Gestion</th>
                    <th scope="col">Sub-tipo Gestion</th>
                    

                    <th scope="col">Opciones</th>

                </tr>
            </thead>
            <tbody>
            <tr>
            </tr>
                <c:forEach var="dato" items="${listResiGestorId}">
                
<%--                 <c:forEach items="dato" var="list" > --%>
                
                    <tr>
                        <td scope="row">${dato.get(1)} :: ${dato.get(2)}</td>
                        <td scope="row">${dato.get(4)}</td>
                  	 	<td scope="row">${dato.get(6)}</td>
                  	 						    <td>
                             <form action="ControlGestor" method="post">
                                <input type="hidden" name="txtId" value="${dato.get(0)}">
                                <button type="submit" name="action" value="servicioActuaGestor" class="btn btn-success ti-pencil"> </button>
                                <button type="submit" name="action" value="eliminaServicioGestor" class="btn btn-danger ti-trash"> </button>
                             </form>
                        </td>
<%--                 </c:forEach> --%>
                </c:forEach>
            </tbody>

        </table>            
             <script>
                                $(document).ready(function() {
                                    
                                    $("#grid").kendoGrid({

                                        height: 450,
                                        
                                        columnMenu: true,
                                        pageable: {
                                            pageSize: 10
                                        },
                                        sortable: true
   
                                    });
                                });
                            </script>

						</div>
                    <!-- main content area end -->
                    <!-- footer area start-->
                    </div>
                    <demo:footer/>
                                     
                </body>

                </html>
