<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
	        <title>sdstrp - Ruta </title>
    </head>
    <body>

        <%@include file ="../sidebarNavbar2.jsp" %>

        <div class="col-9 ml-5">
            <div class="row">
                <div class="breadcrumbs-area">
                    <h4 class="page-title pull-left">Listado de Rutas</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><span> inscritas en el sistema de información</span></li>
                    </ul>
                </div>
            </div>
            <!-- FIN DE MENU  -->
        

        <div class="card">

            <button type="button" class="btn btn-success mb-3 ti-plus pull-right"><a href="controlTrans?action=rutaCreaTransp" class="text-white">Crear Ruta </a> 
                <br>

        </div>
        
         
        <div class="row">
        <table id="grid">
            <thead>

                <tr>
                    <th scope="col">Nombre<br/>

                    </th>
                    <th scope="col">Sedes Generadoras</th>
                    

                    <th scope="col">Opciones</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${listRutas}">
                    <tr>
                        <td scope="row">${dato.get(1)}</td>
                        <td scope="row">${dato.get(0)}</td>

                        <td>
                            <form action="controlTrans" method="post">
                                <input type="hidden" name="txtId" value="${dato.get(0)}">
                            
                            
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
<demo:footer/>
          </body>
</html>
