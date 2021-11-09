<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
   
   
<demo:header/>
<title>sdstrp - Vehiculo </title> 
</head>

    
   
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col">

                <!-- page title area start -->
               
                    <div class="row align-items-center">
                        <div class="col-sm-7">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Vehiculo</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span> inscritas en el sistema de información</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                
                <!-- page title area end -->
                <!-- main content area inicio -->
                <div class="main-content-inner">
                 
                                     <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="controlTrans?action=vehiCreaTransp" class="text-white">Crear Vehiculo </a> 
                                                              
                    <p>
            			<label style="color: green;width: 100%;text-align: left;">${infoMessage}</label> 
        			</p>
        			<p>
             			<label style="color: red; width: 100%;text-align: left;">${errorMessage}</label>
        			</p>

                                        </div>
                                        <div>
                                            <table id="grid verde">
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
                                                                <form action="controlTrans" method="post">
                                                                    <input type="hidden" name="txtId" value="${dato.get(0)}">

                                                                    <button type="submit" name="action" value="vehiActuaTransp"class="btn btn-success far fa-edit"> </button>
                                                                    <button type="submit" name="action" value="vehiEliminaTransp" class="btn btn-danger fa fa-trash"> </button>
                                                                </form>
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
               <demo:footer/>
    </body>

</html>
