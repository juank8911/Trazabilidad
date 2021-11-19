<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
<title>sdstrp - Residuo</title>
</head>

<body>

	<%@include file="../sidebarNavbar2.jsp"%>
	<!-- main content area start -->
	<div class="col-9 ml-5">

		<!-- page title area start -->
		<div class="row justify-content-md-center">
                            <h4 class="page-title pull-left">Salidas</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><span class="badge bg-primary">en el sistema de información</span></li>
                            </ul>
            			</div>
		<!-- page title area end -->
		<!-- main content area inicio -->

<div class="row justify-content-md-center">

				<table id="grid">
    <colgroup>
        <col style="width:100px" />
        <col style="width:200px" />
        <col />
    </colgroup>
    <thead>
        <tr>
           <th data-field="dec_id" >Numero de Declaracion </th>                    
			<th data-field="dec_gen_fecha_trn" > Fecha de Envio</th>                          
			<th data-field="der_gen_cor" > Corriente Reciduo</th>                        
			<th data-field="dec_ges_peso" > Peso Decalarado <br />por el Generdaor</th>    
			<th data-field="tRes" >Transportador<br /></th>                       
			<th data-field="dec_trn_fecha_rec" >Fecha de<br /> recoleccion</th>                
			<th data-field="dec_trn_peso" >peso declarado <br/> transportador</th>                      
			<th data-field="sed_nombre" >Gestor</th>                              
			<th data-field="dec_gen_fecha_ges" >Fecha de Recepcion<br /> por el Generador </th>
			<th data-field="tRes" >Peso recibido por<br /> el Gestor</th>         
			<th data-field="pesoGen">Estado</th>                                    
        </tr>
    </thead>
    <tbody>
                        <c:forEach var="dato" items="${listDeclaSal}">
                        <tr>
                        	
                            <td scope="row" rowspan="${dato.declaracion_res.size()}">${dato.dec_id}</td>
                            <td scope="row" rowspan="${dato.declaracion_res.size()}" >${dato.dec_gen_fecha_gen}</td>
                           
                            
                                                 
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
		</div>
		<!-- main content area end -->
<script type="text/javascript">
// $(document).ready(function() {
// $("#grid").kendoGrid({

//     columns: [
//         {
//             field: "dec_id",
//             filterable: true,
//         },
//         {
//             field: "dec_gen_fecha_trn",
//             filterable: false,
//         },
//         {
//             field: "der_gen_cor",
//             filterable: false,
//         },
//         {
//             field: "dec_ges_peso",
//             filterable: false,
//         },
//         {
//             field: "tRes",
//             filterable: false,
//         },
//         {
//             field: "dec_trn_fecha_rec",
//             filterable: false,
//         },
//         {
//             field: "dec_trn_peso",
//             filterable: false,
//         },
//         {
//             field: "sed_nombre",
//             filterable: false,
//         },
//         {
//             field: "dec_gen_fecha_ges",
//             filterable: false,
//         },
//         {
//             field: "tRes",
//             filterable: false,
            
//         },
//         {
//             field: "pesoGen",
//             filterable: false,
            
//         }

        
//     ]
// });
// });
</script>

	</div>
		<!-- main content area end -->
	<!-- footer area start-->
	<demo:footer />
	;
</body>

</html>


