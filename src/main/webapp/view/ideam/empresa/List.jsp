
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


    <demo:header/>
        <title>sdstrp - Panel de Control</title>
      
    </head>

    <body>
        
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="col-9">

                <!-- page title area start -->
                <div class="row">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Listado de Empresas</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>Registrados en el sistema de informacion</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                    
                </div>


    

          <div class="row">
            <table id="dTabla">
               
                   <tr>
                       <th scope="col">Razon Social <br/>
                       
                       </th>
                       <th scope="col">Nit <br />
                        </th>
                       <th scope="col">Departamento<br />
                        </th>
                       <th scope="col">Municipio<br />
                       </th>
                       <th scope="col">Generadores<br />
                        </th>
                       <th scope="col">Transportadores<br />
                        </th>
                       <th scope="col">Gestores<br />
                        </th>
                       <th scope="col">Establecimiento<br />
                        </th>
                       <th scope="col">Opciones</th>
                       
                   </tr>
                   
					<c:forEach items="${listaEmpresasIdm}" var="dato">

						<tr>
							<td scope="row">${dato.get(0)}</td>
							<td>${dato.get(1)}</td>
							<td>${dato.get(2)}</td>
							<td>${dato.get(1)}</td>
							<td>${dato.get(1)}</td>
							<td>${dato.get(1)}</td>
							<td>${dato.get(1)}</td>
							<td>${dato.get(1)}</td>
							<td>
								<button type="button" class="btn btn-success mb-3 ti-search"></button>
								<button type="button" class="btn btn-success mb-3 ti-pencil"></button>
							</td>

						</tr>

					</c:forEach>
              
                   
    
           </table>
                    
                           
                    <ul class="pagination pagination justify-content-center">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                   </ul>

<demo:footer/>

    </body>

</html>
