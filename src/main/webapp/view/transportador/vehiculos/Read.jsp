<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
   
   
<demo:header/>
<title>sdstrp - Vehiculo </title> 
</head>

    
   
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9">

                    
                     <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Listado de Vehiculo</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">inscritas en el sistema de información</span></li>
                            </ul>
            		</div>
                
                <!-- page title area end -->
                <!-- main content area inicio -->

                                        <div class="row justify-content-md-center">
                                        
                                       <a href="controlTrans?action=vehiCreaTransp" id="btnfloat" class="float">
											<i class="fa fa-plus my-float"></i>
									   </a>
									   
                                            <table id="grid" style="width: 95%;">
                                                <thead>

                                                    <tr>
                                                        <th scope="col">Tipo Vehiculo<br/>

                                                        </th>
                                                        <th scope="col">Placa <br />
                                                        </th>
                                                        <th scope="col">Placa R<br />
                                                        </th>
                                                        <th scope="col">Marca<br />
                                                        </th>
                                                        <th scope="col">Linea<br />
                                                        </th>
                                                        <th scope="col">Designacion<br />
                                                        </th>
                                                        <th scope="col">Propietario<br />
                                                        </th>
                                                        <th scope="col">Peligrosidad<br />
                                                        </th>
                                                        <th scope="col">Sede Transportador</th>

                                                        <th scope="col">Opciones</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="dato" items="${listaVehiculoUsu}">
                                                        <tr>
                                                            <td scope="row">${dato.get(7)}</td>
                                                            <td>${dato.get(4)}</td>
                                                            <td>${dato.get(5)}</td>
                                                            <td>${dato.get(6)}</td>
                                                            <td>${dato.get(3)}</td>
                                                            <td>${dato.get(9)}</td>
                                                            <td>${dato.get(2)}</td>
                                                            <td>${dato.get(1)}</td>
                                                            <td>${dato.get(8)}</td>

                                                            <td>
                                                                    <input type="hidden" name="txtId" value="${dato.get(0)}">
																	<button type="button" data-bs-id="${dato.get(0)}" onclick="editarRes(this)" class="btn btn-success fas fa-pencil-alt"></button>
                                                                    
                                                            </td>
                                                        </tr>

                                                    </c:forEach>
                                                </tbody>

                                            </table>

                                            <script>
                                                            $(document).ready(function() {
                                    
                                                                $("#grid").kendoGrid({
                                                                    toolbar: ["excel"],
                                        
                                                                    excel: {
                                                                        allPages: true
                                                                    },
                                                                    height: 450,
                                        
                                                                    columnMenu: true,
                                                                    pageable: {
                                                                        pageSize: 6
                                                                    },
                                                                    sortable: true
   
                                                                });
                                                            });
                                            </script>

                                  
                     
                    <!-- main content area end -->
                </div>
                <!-- footer area start-->
                </div>
               <demo:footer/>
    </body>

</html>
