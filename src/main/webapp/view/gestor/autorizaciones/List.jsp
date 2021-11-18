<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

    <demo:header/>
        
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

                <!-- page title area start -->
                <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Autorizaciones Ambientales</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">del gestor en el sistema de informacion</span></li>
                            </ul>
            			</div>

                <!-- page title area end -->
                <div class="row justify-content-md-center">
                    <div class="card-body">

            <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="ControlGestor?action=autorizaCreaGestor" class="text-white">Crear Autorizacion</a>
            </button> 
                

        </div>
                  <div class="row justify-content-md-center">
        <table id="grid">
            <thead>

                <tr>
                    <th scope="col">Resolucion Ambiental</th>
                    <th scope="col">Autoridad Ambiental</th>
                    
                    <th scope="col">Permiso de Emisiones</th>
                    <th scope="col">Permiso de Vertimientos</th>
                    

                    <th scope="col">Opciones</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${autoG}">
                    <tr>
                        <td scope="row">${dato.getLicencia_plan()}</td>
                        <td scope="row">${dato.getAuto_ambiental()}</td>
                        
                        <td scope="row">${dato.getPermiso_emisiones()}</td>
                        <td scope="row">${dato.getPermiso_vertimi()}</td>
                  
                        <td>
                            <form action="ControlGestor" method="post">
                                <input type="hidden" name="txtId" value="${dato.getId_autorizacion()}">
                                <button type="submit" name="action" value="autorizaActuaGestor" class="btn btn-success ti-pencil-alt"> </button>
                                <button type="submit" name="action" value="autorizaVerGestor" class="btn btn-success ti-eye"> </button>
                                <button type="submit" name="action" value="autorizaEliminaGestor" class="btn btn-danger ti-trash"> </button>
                            
                            </form>
  
                            
                        </td>
                    </tr>

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
</div>
</div>
<demo:footer/>
                
                </body>

                </html>
