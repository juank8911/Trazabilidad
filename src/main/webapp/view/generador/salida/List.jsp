<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
        
         <title>sdstrp - Residuo </title>
  </head>

    <body>
        
        <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            

                <!-- page title area start -->
                <div class="col-9 ml-5">
                <div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Salidas</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">en el sistema de información</span></li>
                            </ul>
            			</div>

                    
                    
             <div class="row justify-content-md-center">
	
                    <table id="grid">
                        <thead id="verde">

                        <tr>
                            <th scope="col">Numero de Declaracion <br/>
                                 
                            </th>
                            <th scope="col">Fecha de Envio<br />
                                 </th>
                            <th scope="col">Corriente Reciduo<br />
                                 </th>
                            <th scope="col">Peso Decalarado <br />por el Generdaor</th>
                            <th scope="col">Transportador<br /></th>
                            <th scope="col">Fecha de<br /> recoleccion</th>
                            <th scope="col">peso declarado<br /></th>
                            <th scope="col">Gestor<br /></th>
                            <th scope="col">Fecha de Recepcion<br /> por el Generador </th>
                            <th scope="col">Peso recibido por<br /> el Gestor</th>
                            
                            <th scope="col">Estado</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dato" items="${listDeclaSal}">
                        <tr>
                        	
                            <td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.dec_id}</td>
                            <td scope="row" rowspan="${dato.declaracion_res.size()}" ><fmt:formatDate value="${dato.dec_gen_fecha_gen}" timeStyle="none" dateStyle="long" /></td>
                           
                            
                                                 
                            <c:forEach items="${dato.declaracion_res}" var="dere" varStatus="loop">
                            <c:if test="${loop.index == 0}">
                            		<td> ${dere.der_gen_tipo_residuo} -- </td>
                            		<td>${dere.der_gen_peso_residuo}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.decSedTran.sed_nombre}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}"><fmt:formatDate value="${dato.dec_trn_fecha_trn}" 	timeStyle="none" dateStyle="long" /></td>
                            		<td scope="row" >${dere.der_trn_peso_residuo2}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.decSedGes.sed_nombre}</td>
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}"><fmt:formatDate value="${dato.dec_ges_fecha_ent}" 	timeStyle="none" dateStyle="long" /></td>
                            		<td scope="row" >${dere.der_ges_peso_residuo2}</td>
                            		<c:choose>
                            		<c:when test="${dato.dec_gen_aprobada == 'N'}">
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">No Enviada</td>
                            		</c:when>
                            		<c:when test="${dato.dec_gen_aprobada == 'A' && dato.dec_trn_aprobada == 'N'}">
                            		<td scope="row" rowspan="${dato.declaracion_res.size()}">Enviada</td>
                            		</c:when>
                            		</c:choose>
                            		</td>
                          </tr>		
                            </c:if>
                            <c:if test="${loop.index != 0}">
                            <tr>
                            		<td> ${dere.der_gen_tipo_residuo}</td>
                            		<td>${dere.der_gen_peso_residuo}</td>
                            		<td scope="row" >${dere.der_trn_peso_residuo2}</td>
                            		<td scope="row" >${dere.der_ges_peso_residuo2}</td>
                            </tr>		
                            </c:if>
                            </c:forEach>

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
                                            pageSize: 5
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