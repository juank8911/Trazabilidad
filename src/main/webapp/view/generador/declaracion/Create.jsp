<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<demo:header >
<title>sdstrp - Declaracion</title>
<script type="text/javascript" src="assets/js/declajax.js"></script>
</demo:header>
        
    <body>
         <%@include file ="../sidebarNavbar2.jsp" %>
            <!-- main content area start -->
            <div class="main-content">

                <!-- page title area start -->
                <div>
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="breadcrumbs-area">
                                <h4 class="page-title pull-left">Crear Delaracion</h4>
                                <ul class="breadcrumbs pull-left">
                                    <li><span>de residuos </span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- FIN DE MENU  -->
                    </div>
                    
                </div>
                <!-- page title area end -->
<!--                 div class="main-content-inner" -->
<!--                     table success start -->
 
<!--                     div class="card" -->
                       
<!--                         div class="card-body" -->
                            <br />
                            <c:forEach var="dato0" items="${listaDeclaracionProg}" begin="0" end="0">
                                <div class="container bg-success text-white">

                                    <div class="form-group col-md-12">
                                        <h6><small>Descripcion: </small> ${dato0.get(1)} </h6>
                                        
                                        <h6><small>Corriente de Residuo: </small> ${dato0.get(2)} </h6>
                                        
                                        <h6><small>Transportador Asignado: </small> ${dato0.get(16)}  ::  ${dato0.get(17)} </h6>
                                        
                                        <h6><small>Gestor Asignado: </small> ${dato0.get(14)}  ::  ${dato0.get(15)} </h6>
                                    </div>
                                 
                                </div>
                            </c:forEach>
                            <br>
                            <c:forEach var="dato0" items="${listaDeclaracionProg}">
                                <h6><small>Descripcion: </small> ${dato0.get(1)} </h6><br>
                                <form class="form-row" id="form1" novalidate>
                                	
                                <input type="hidden" name="idRes" id="idRes" value="${dato0.get(0)}">
                                <input type="hidden" name="idDecla" id="idDecla" value="${dato0.get(3)}">
                                <input type="hidden" name="idDeRes" id="idDeRes" value="${dato0.get(10)}">
                                <div class="form-group col-md-2"> 
                                    <label> Tipo de Embalaje:* </label>
                                    <select  id="tipEmbalaje" name="tipEmbalaje"  class="custom-select mr-sm-2">
                                    <option value="${dato0.get(13)}">${dato0.get(14)}</option>
                                        <c:forEach var="dato" items="${listaTipoEmbalaje}"> 
                                            <option value="${dato.tem_id}">${dato.tem_nombre}</option>
                                        </c:forEach>
                                    </select>
                                    </div>
                                <div class="form-group col-md-2"> 
                                    <label># Embalajes:* </label>
                                    <input type="number" name="txtCantEmb" id="txtCantEmb" class="form-control">
                                </div>
                                <div class="form-group col-md-2"> 
                                    <label>Tipo de Empaque: * </label>
                                    <select  id="tipEmpaque" name="tipEmpaque" class="custom-select mr-sm-2">
                                    	<option value="${dato0.get(11)}">${dato0.get(12)}</option>
                                        <c:forEach var="dato1" items="${listaTipoEmpaque}"> 
                                            <option value="${dato1.tep_id}">${dato1.tep_nombre}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-2"> 
                                    <label># de Empaques: *</label>
                                    <input type="number" name="txtCantEmpq" id="txtCantEmpq" class="form-control">
                                </div>
                               <div class="form-group col-md-2"> 

                                    <label>Peso (Kg)</label>
                                    <input type="number" name="txtCantPeso" id="txtCantPeso" class="form-control">
                                </div>
                                    <div class="form-group col-md-1">
                                    
                                   <input  id="declarar" class="btn btn-success form-group" value="Enviar Declaracion">
                                </div>

                            </form>
                            </c:forEach>
                           
                <!-- main content area end -->
                <!-- footer area start-->
                <demo:footer>
                </demo:footer>
    </body>

</html>
